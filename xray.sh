#!/bin/sh
if [ ! -f UUID ]; then
  UUID="fce9cdb9-e16e-4a97-bdd5-15583c77115f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

