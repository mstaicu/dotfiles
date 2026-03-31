# Dotfiles

This repository contains my personal dotfiles, managed with GNU Stow for easy setup across machines.

---

## 📦 Structure

Each tool/config is isolated in its own folder:

```
dotfiles/
├── vim/        # Vim config + plugins (via vim-plug)
├── zsh/        # Shell config (.zshrc, .zprofile, etc.)
├── vscode/     # VS Code settings
├── ssh/        # SSH config (no private keys)
├── config/     # ~/.config programs
```

---

## ⚙️ Installation

Clone the repo into your home directory:

```
cd $HOME
git clone git@github.com/mstaicu/dotfiles.git .dotfiles
cd .dotfiles
```

---

## 🔗 Apply dotfiles with Stow

Instead of stowing everything at once, stow each package individually:

```
stow vim
stow zsh
stow vscode
stow config
stow ssh
```

---

## ♻️ Migrating existing configs

If you already have existing files in `$HOME`, you can adopt them:

```
stow --adopt vim zsh vscode config ssh
```

⚠️ Review changes before committing — this moves files into the repo.

---

## 🧩 Vim setup

This repo uses **vim-plug** for plugin management.

After stowing:

```
vim +PlugInstall +qall
```

This installs plugins like Gruvbox automatically.

---

## 🖥️ VS Code setup

VS Code settings are symlinked to:

```
~/Library/Application Support/Code/User/settings.json
```

After stowing, restart Visual Studio Code to apply changes.

---

## 🔒 SSH notes

Only safe files (like `config`) are tracked.

Private keys are **not committed**. Those are managed by Secretive

---

## 🧠 Notes

* Do **not** use `stow .`
* Always stow individual packages
* Symlinks are managed automatically by Stow
* Run `stow -D <package>` to remove a package

