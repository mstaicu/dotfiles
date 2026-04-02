# dotfiles

---

## 📦 Structure

```text
dotfiles/
├── bootstrap.sh        # setup script
├── Brewfile            # packages (Homebrew)
├── vim/                # Vim config
├── zsh/                # shell config
├── vscode/             # VS Code settings
├── iterm2/             # iTerm2 preferences & profiles
├── ssh/                # SSH config (no private keys)
├── config/             # ~/.config programs
```

---

## ⚙️ Installation

Clone into your home directory:

```bash
git clone git@github.com:mstaicu/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

Run bootstrap:

```bash
./bootstrap.sh
```

---

## 🚀 What bootstrap does

The script will:

* Install Homebrew (if missing)
* Install packages from `Brewfile`
* Symlink dotfiles using GNU Stow
* Install Vim plugins

---

## 🔗 Dotfiles management (Stow)

Each tool is managed as its own package:

```bash
stow vim zsh vscode ssh config
```

To update symlinks:

```bash
stow --restow <package>
```

---

## 🍺 Homebrew

Packages are defined in:

```bash
Brewfile
```

Install / sync:

```bash
brew bundle
```

Export current setup:

```bash
brew bundle dump --file=~/dotfiles/Brewfile --force
```

---

## 🖥️ iTerm2

Preferences are stored in:

```bash
~/.dotfiles/iterm2
```

To enable:

* Open iTerm2 → Preferences → General
* Enable **“Load preferences from a custom folder”**
* Set path to:

```bash
~/.dotfiles/iterm2
```

---

## 🧠 Vim

Uses `vim-plug` for plugin management.

Install plugins:

```bash
vim +PlugInstall +qall
```

---
