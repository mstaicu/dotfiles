#!/usr/bin/env bash
set -e

echo "🚀 starting"

if ! command -v brew &>/dev/null; then
  echo "🍺 installing homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# load brew into current shell
if command -v brew &>/dev/null; then
  eval "$(brew shellenv)"
elif [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

echo "📦 installing brew bundle..."
brew bundle --file="Brewfile"

echo "🔗 stowing dotfiles..."
stow --restow vim zsh vscode ssh config

if command -v vim &>/dev/null; then
  echo "🧠 installing vim plugins..."
  vim +PlugInstall +qall || true
fi

echo "✅ complete!"
