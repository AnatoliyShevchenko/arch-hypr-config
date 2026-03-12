#!/bin/bash

set -e

echo "==> Enabling services..."

sudo systemctl enable greetd

sudo systemctl enable --now docker
sudo usermod -aG docker "$USER"

echo "==> Services enabled successfully!"
echo "Note: You may need to re-login for docker group to take effect."
