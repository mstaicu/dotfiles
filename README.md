# Dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
brew install git
```

### Secretive

```
brew install secretive --cask
```

### Stow

```
brew install stow
```

### Command line formatting

```
brew install bat zsh-syntax-highlighting tree
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/mstaicu/dotfiles.git
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