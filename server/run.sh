#!/usr/bin/env bash
set -e

# ---- HARD FAILS (intentional) ----

if ! command -v java >/dev/null 2>&1; then
echo "ERROR: Java is not installed or not in PATH."
exit 1
fi

JAVA_VERSION=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
if [[ "$JAVA_VERSION" != 21* ]]; then
echo "ERROR: Java 21 required. Found: $JAVA_VERSION"
exit 1
fi

if [ ! -f "server.jar" ]; then
echo "ERROR: server.jar not found. Fabric is not installed."
exit 1
fi

if [ ! -f "jvm.args" ]; then
echo "ERROR: jvm.args not found."
exit 1
fi

# ---- RUN ----

echo "Starting Minecraft server..."
exec java @jvm.args -jar server.jar nogui
