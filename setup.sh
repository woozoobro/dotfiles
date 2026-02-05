#!/bin/bash

echo "=== Mac Setup Script ==="

# 스크립트가 있는 디렉토리로 이동
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Homebrew 설치 (없으면)
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed"
fi

# 패키지 설치 (이미 있는 건 스킵)
echo "Installing packages from: $SCRIPT_DIR/Brewfile"
brew bundle --file="$SCRIPT_DIR/Brewfile" --verbose

echo "=== Setup Complete ==="
