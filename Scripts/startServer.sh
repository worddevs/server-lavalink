#!/bin/bash
cd "$(dirname "$0")/.." || exit

if [ -f .env ]; then
    while IFS='=' read -r key val || [ -n "$key" ]; do
        # Omitir lineas vacias y comentarios
        [[ "$key" =~ ^[[:space:]]*# ]] && continue
        [[ -z "$key" ]] && continue
        
        key=$(echo "$key" | xargs)
        val=$(echo "$val" | xargs)
        
        val="${val%\"}"
        val="${val#\"}"
        val="${val%\'}"
        val="${val#\'}"
        
        export "$key"="$val"
    done < .env
fi

echo "[INFO] LAVALINK_PORT detectado: $LAVALINK_PORT"
echo "[INFO] LAVALINK_ADDRESS detectado: $LAVALINK_ADDRESS"
echo "[INFO] Iniciando Lavalink Node..."

exec java -Xms128M -Xmx512M -XX:+UseG1GC -jar Lavalink.jar