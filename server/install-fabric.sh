#!/usr/bin/env bash
set -e

MC_VERSION="1.21.11"
FABRIC_LOADER="0.15.11"
INSTALLER_JAR="fabric-installer.jar"

if [ ! -f "$INSTALLER_JAR" ]; then
echo "ERROR: fabric-installer.jar not found."
exit 1
fi

if [ -f "start.jar" ]; then
echo "Fabric already installed. start.jar exists."
exit 0
fi

echo "Installing Fabric Server..."
java -jar "$INSTALLER_JAR" 
server 
-mcversion "$MC_VERSION" 
-loader "$FABRIC_LOADER" 
-downloadMinecraft

echo "Fabric installation complete."
