#!/bin/bash

echo "=== Mac Setup Script ==="

# Homebrew 설치 (없으면)
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed"
fi

# 패키지 설치 (이미 있는 건 스킵)
echo "Installing packages..."
brew bundle --file=~/dotfiles/Brewfile --no-lock --verbose

echo "=== Setup Complete ==="
