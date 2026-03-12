#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIGS_DIR="$SCRIPT_DIR/../configs"

echo "==> Copying configs..."

# User configs
mkdir -p ~/.config/{hypr,waybar,kitty,wlogout,yazi}

cp -r "$CONFIGS_DIR/hypr/"* ~/.config/hypr/
cp -r "$CONFIGS_DIR/waybar/"* ~/.config/waybar/
cp -r "$CONFIGS_DIR/kitty/"* ~/.config/kitty/
cp -r "$CONFIGS_DIR/wlogout/"* ~/.config/wlogout/
cp -r "$CONFIGS_DIR/yazi/"* ~/.config/yazi/

cp "$CONFIGS_DIR/.zshrc" ~/.zshrc
cp "$CONFIGS_DIR/.p10k.zsh" ~/.p10k.zsh

# System configs
sudo cp "$CONFIGS_DIR/greetd/config.toml" /etc/greetd/config.toml

echo "==> Configs copied successfully!"
