#!/usr/bin/env python3
import argparse
import hashlib
import json
import secrets
import time
from http import HTTPStatus
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from typing import Dict
from urllib.parse import parse_qs, urlparse


STATE: Dict[str, Dict] = {
    "tokens": {},
    "profiles": {},
}


class Handler(BaseHTTPRequestHandler):
    server_version = "WakerLocalBackend/0.1"

    def _send_json(self, payload: Dict, status: int = HTTPStatus.OK) -> None:
        body = json.dumps(payload, ensure_ascii=False).encode("utf-8")
        self.send_response(status)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def _read_json(self) -> Dict:
        length = int(self.headers.get("Content-Length", "0"))
        if length <= 0:
            return {}
        raw = self.rfile.read(length)
        if not raw:
            return {}
        try:
            return json.loads(raw.decode("utf-8"))
        except Exception:
            return {}

    def _token_from_request(self) -> str:
        auth = self.headers.get("Authorization", "")
        if auth.startswith("Bearer "):
            return auth[7:].strip()
        parsed = urlparse(self.path)
        token = parse_qs(parsed.query).get("token", [""])[0]
        return token

    def do_GET(self) -> None:  # noqa: N802
        path = urlparse(self.path).path
        if path in ("/health", "/ping"):
            self._send_json({"ok": True, "service": "waker-local-backend", "ts": int(time.time())})
            return

        if path == "/config/bootstrap":
            self._send_json(
                {
                    "ok": True,
                    "maintenance": False,
                    "serverTime": int(time.time()),
                    "news": [],
                    "features": {
                        "chat": False,
                        "pvp": False,
                        "payments": False,
                    },
                }
            )
            return

        if path == "/player/profile":
            token = self._token_from_request()
            player_id = STATE["tokens"].get(token)
            if not player_id:
                self._send_json({"ok": False, "error": "unauthorized"}, HTTPStatus.UNAUTHORIZED)
                return
            profile = STATE["profiles"].get(player_id)
            if not profile:
                self._send_json({"ok": False, "error": "profile_not_found"}, HTTPStatus.NOT_FOUND)
                return
            self._send_json({"ok": True, "profile": profile})
            return

        if path == "/player/state":
            token = self._token_from_request()
            player_id = STATE["tokens"].get(token)
            if not player_id:
                self._send_json({"ok": False, "error": "unauthorized"}, HTTPStatus.UNAUTHORIZED)
                return
            profile = STATE["profiles"].get(player_id)
            if not profile:
                self._send_json({"ok": False, "error": "profile_not_found"}, HTTPStatus.NOT_FOUND)
                return
            self._send_json(
                {
                    "ok": True,
                    "state": {
                        "playerId": player_id,
                        "coins": profile["coins"],
                        "level": profile["level"],
                    },
                }
            )
            return

        self._send_json({"ok": False, "error": "not_found", "path": path}, HTTPStatus.NOT_FOUND)

    def do_POST(self) -> None:  # noqa: N802
        path = urlparse(self.path).path
        body = self._read_json()

        if path == "/auth/login":
            # Intentionally permissive for local revival/testing: creates local profile on first login.
            username = body.get("username") or body.get("user") or body.get("deviceId") or "player_local"
            player_id = f"p_{hashlib.sha256(username.encode('utf-8')).hexdigest()[:8]}"
            token = secrets.token_hex(24)
            STATE["tokens"][token] = player_id
            if player_id not in STATE["profiles"]:
                STATE["profiles"][player_id] = {
                    "playerId": player_id,
                    "name": username,
                    "level": 1,
                    "coins": 1000,
                }
            self._send_json(
                {
                    "ok": True,
                    "token": token,
                    "playerId": player_id,
                    "profile": STATE["profiles"][player_id],
                }
            )
            return

        if path == "/player/state":
            token = self._token_from_request()
            player_id = STATE["tokens"].get(token)
            if not player_id:
                self._send_json({"ok": False, "error": "unauthorized"}, HTTPStatus.UNAUTHORIZED)
                return
            delta_coins = int(body.get("deltaCoins", 0))
            delta_level = int(body.get("deltaLevel", 0))
            profile = STATE["profiles"].get(player_id)
            if not profile:
                self._send_json({"ok": False, "error": "profile_not_found"}, HTTPStatus.NOT_FOUND)
                return
            profile["coins"] = max(0, int(profile["coins"]) + delta_coins)
            profile["level"] = max(1, int(profile["level"]) + delta_level)
            self._send_json({"ok": True, "profile": profile})
            return

        self._send_json({"ok": False, "error": "not_found", "path": path}, HTTPStatus.NOT_FOUND)


def main() -> None:
    parser = argparse.ArgumentParser(description="Minimal local backend for reviving legacy game client flows.")
    parser.add_argument("--host", default="127.0.0.1")
    parser.add_argument("--port", type=int, default=8080)
    args = parser.parse_args()

    server = ThreadingHTTPServer((args.host, args.port), Handler)
    print(f"Listening on http://{args.host}:{args.port}")
    server.serve_forever()


if __name__ == "__main__":
    main()
