#!/usr/bin/with-contenv bash

CONFIG_PATH=/data/telemt.toml

SECRET=$(jq --raw-output ".secret" /data/options.json)
PORT=$(jq --raw-output ".port" /data/options.json)

cat <<EOF > $CONFIG_PATH
bind = "0.0.0.0:$PORT"
secret = "$SECRET"
workers = 1
EOF

echo "Starting Telemt on port $PORT"
exec telemt -c $CONFIG_PATH
