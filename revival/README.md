# Waker local revival toolkit

This repository is a decompiled Android client, so this toolkit focuses on local revival steps that can be done directly here:

1. extract candidate endpoints and hosts from smali/resources/native library strings
2. run a minimal local backend for boot/login/profile/state flows
3. generate hosts override entries to redirect known remote domains to localhost

## 1) Extract endpoints inventory

```bash
python3 tools/extract_endpoints.py \
  --root . \
  --output revival/endpoint_inventory.json
```

## 2) Run local backend

```bash
python3 tools/local_backend.py --port 8080
```

Use `--host 0.0.0.0` only when you explicitly need remote devices on your LAN to connect.

Available endpoints:

- `GET /health`
- `GET /ping`
- `POST /auth/login`
- `GET /config/bootstrap`
- `GET /player/profile` (Bearer token)
- `GET /player/state` (Bearer token)
- `POST /player/state` (Bearer token, supports `deltaCoins` and `deltaLevel`)

## 3) Generate hosts overrides

```bash
python3 tools/generate_hosts_override.py \
  --inventory revival/endpoint_inventory.json \
  --output revival/hosts.override
```

Example apply on Linux host:

```bash
sudo sh -c 'cat revival/hosts.override >> /etc/hosts'
```

Example apply on Android emulator (rooted image):

```bash
adb root
adb remount
adb push revival/hosts.override /sdcard/hosts.override
adb shell su -c 'cat /sdcard/hosts.override >> /etc/hosts'
```

## Notes

- This does **not** replace unknown native protocol logic inside `lib/armeabi/libcity_ar.so`; it gives a controlled local bootstrap surface for iterative reverse engineering.
- If client connections still fail after DNS redirection, inspect protocol details and TLS/pinning paths before extending the backend contracts.
