# Dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### ZSH prompt ( Pure )

```
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ cd $HOME
$ git clone git@github.com/mstaicu/dotfiles.git .dotfiles
$ cd .dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

if you have existing files in your $HOME folder

```
$ stow --adopt .
```

