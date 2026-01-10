#!/bin/bash

echo "=== Mac Setup Script ==="

# Homebrew 설치 (없으면)
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed"
fi

# Brewfile로 패키지 설치
echo "Installing packages from Brewfile..."
brew bundle --file=~/dotfiles/Brewfile

echo "=== Setup Complete ==="
