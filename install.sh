#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "================================"
echo "  Arch + Hyprland Setup Script"
echo "================================"
echo

sudo sed -i 's/#ru_RU.UTF-8/ru_RU.UTF-8/' /etc/locale.gen
sudo locale-gen

"$SCRIPT_DIR/scripts/install-packages.sh"

"$SCRIPT_DIR/scripts/enable-services.sh"

"$SCRIPT_DIR/scripts/install-dev-tools.sh"

"$SCRIPT_DIR/scripts/set-environment.sh"

"$SCRIPT_DIR/scripts/copy-configs.sh"

echo
echo "================================"
echo "  Setup complete!"
echo "================================"
echo "Reboot to start using Hyprland with greetd."
