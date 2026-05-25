#!/usr/bin/env python3
import argparse
import hashlib
import json
import secrets
import threading
import time
from http import HTTPStatus
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from typing import Dict, List
from urllib.parse import parse_qs, urlparse

# Guardrails for local state mutation endpoints to prevent unrealistic accidental or malicious jumps.
MAX_DELTA_COINS = 1_000_000
MAX_DELTA_LEVEL = 10_000


STATE: Dict[str, Dict] = {
    "tokens": {},
    "profiles": {},
}


class Handler(BaseHTTPRequestHandler):
    server_version = "WakerLocalBackend/0.1"

    def _safe_json(self, payload: Dict, max_len: int = 800) -> str:
        try:
            text = json.dumps(payload, ensure_ascii=False)
        except Exception:
            text = str(payload)
        if len(text) > max_len:
            return text[:max_len] + "...(truncated)"
        return text

    def _log_request(self, body: Dict | None = None) -> None:
        headers = {k: v for k, v in self.headers.items()}
        if "Authorization" in headers:
            headers["Authorization"] = "Bearer <redacted>"
        msg = f"{self.command} {self.path} headers={self._safe_json(headers)}"
        if body is not None:
            msg += f" body={self._safe_json(body)}"
        print(msg)

    def _send_json(self, payload: Dict, status: int = HTTPStatus.OK) -> None:
        body = json.dumps(payload, ensure_ascii=False).encode("utf-8")
        self.send_response(status)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)
        print(f"RESPONSE {self.command} {self.path} status={status} body={self._safe_json(payload)}")

    def _send_html(self, html: str, status: int = HTTPStatus.OK) -> None:
        body = html.encode("utf-8")
        self.send_response(status)
        self.send_header("Content-Type", "text/html; charset=utf-8")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)
        print(f"RESPONSE {self.command} {self.path} status={status} body=<html>")

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
        self._log_request()
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

        if path == "/page/pwdreset":
            self._send_html(
                "<html><body><h1>Local password reset placeholder</h1>"
                "<p>Backend override is active.</p></body></html>"
            )
            return

        self._send_json({"ok": True, "fallback": True, "method": "GET", "path": path})

    def do_POST(self) -> None:  # noqa: N802
        path = urlparse(self.path).path
        body = self._read_json()
        self._log_request(body)

        if path == "/auth/login":
            # Intentionally permissive for local revival/testing: creates local profile on first login.
            username = body.get("username") or body.get("user") or body.get("deviceId") or "player_local"
            player_id = f"p_{hashlib.sha256(username.encode('utf-8')).hexdigest()[:16]}"
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
            try:
                delta_coins = int(body.get("deltaCoins", 0))
                delta_level = int(body.get("deltaLevel", 0))
            except (TypeError, ValueError):
                self._send_json({"ok": False, "error": "invalid_delta_type"}, HTTPStatus.BAD_REQUEST)
                return
            if abs(delta_coins) > MAX_DELTA_COINS or abs(delta_level) > MAX_DELTA_LEVEL:
                self._send_json({"ok": False, "error": "delta_out_of_range"}, HTTPStatus.BAD_REQUEST)
                return
            profile = STATE["profiles"].get(player_id)
            if not profile:
                self._send_json({"ok": False, "error": "profile_not_found"}, HTTPStatus.NOT_FOUND)
                return
            profile["coins"] = max(0, int(profile["coins"]) + delta_coins)
            profile["level"] = max(1, int(profile["level"]) + delta_level)
            self._send_json({"ok": True, "profile": profile})
            return

        if path == "/logevent/weightevent":
            self._send_json({"ok": True, "accepted": True, "event": body})
            return

        self._send_json({"ok": True, "fallback": True, "method": "POST", "path": path, "echo": body})


def main() -> None:
    parser = argparse.ArgumentParser(description="Minimal local backend for reviving legacy game client flows.")
    parser.add_argument("--host", default="127.0.0.1")
    parser.add_argument("--port", type=int, default=8080)
    parser.add_argument("--ports", default="", help="Comma-separated ports to bind, e.g. 8080,8992,2095")
    args = parser.parse_args()

    ports: List[int] = [args.port]
    if args.ports.strip():
        ports = []
        for part in args.ports.split(","):
            p = int(part.strip())
            if p not in ports:
                ports.append(p)
    else:
        for fallback_port in (8992, 2095):
            if fallback_port not in ports:
                ports.append(fallback_port)

    servers: List[ThreadingHTTPServer] = []
    threads: List[threading.Thread] = []
    for port in ports:
        server = ThreadingHTTPServer((args.host, port), Handler)
        servers.append(server)
        thread = threading.Thread(target=server.serve_forever, daemon=True)
        thread.start()
        threads.append(thread)
        print(f"Listening on http://{args.host}:{port}")

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        print("Shutting down...")
        for server in servers:
            server.shutdown()
            server.server_close()


if __name__ == "__main__":
    main()
