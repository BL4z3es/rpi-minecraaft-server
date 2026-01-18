#!/usr/bin/env bash
set -e

echo "Installing Azul Zulu 21 (Java 21)..."

sudo apt update
sudo apt install -y curl gnupg ca-certificates

curl -fsSL [https://repos.azul.com/azul-repo.key](https://repos.azul.com/azul-repo.key) | sudo gpg --dearmor -o /usr/share/keyrings/azul.gpg

echo "deb [signed-by=/usr/share/keyrings/azul.gpg] [https://repos.azul.com/zulu/deb](https://repos.azul.com/zulu/deb) stable main" | sudo tee /etc/apt/sources.list.d/zulu.list

sudo apt update
sudo apt install -y zulu21-jre

echo "Verifying Java installation..."
java -version

echo "Azul Zulu 21 installation complete."
