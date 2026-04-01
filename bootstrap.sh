#!/usr/bin/env bash
set -e

echo "🚀 Starting bootstrap..."

# Always run from repo root
cd "$(dirname "$0")"

if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Load brew into current shell
if command -v brew &>/dev/null; then
  eval "$(brew shellenv)"
elif [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

echo "📦 Installing Brew bundle..."
brew bundle --file="Brewfile"

echo "🔗 Stowing dotfiles..."
stow vim zsh vscode ssh

if command -v vim &>/dev/null; then
  echo "🧠 Installing Vim plugins..."
  vim +PlugInstall +qall || true
fi

echo "✅ Bootstrap complete!"
