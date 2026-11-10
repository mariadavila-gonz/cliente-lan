#!/bin/sh
PORT="${PORT:-10000}"
echo "=== PRUEBA DNS ==="
nslookup servidor-web-dmz.onrender.com
echo "=== PRUEBA HTTP ==="
curl -I https://servidor-web-dmz.onrender.com
echo "=== INICIANDO SERVIDOR ==="
python -m http.server "$PORT" --bind 0.0.0.0
