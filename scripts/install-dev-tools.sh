#!/bin/bash

set -e

echo "==> Installing pyenv..."
curl -fsSL https://pyenv.run | bash

echo "==> Installing poetry..."
curl -sSL https://install.python-poetry.org | python3 -

echo "==> Installing ruff..."
curl -LsSf https://astral.sh/ruff/install.sh | sh

echo "==> Installing Claude Code..."
curl -fsSL https://claude.ai/install.sh | bash

echo "==> Dev tools installed successfully!"
