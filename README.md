# Dotfiles

This directory contains the dotfiles for my system

## Installation

Clone the `dotfiles` repo in your $HOME directory

```
$ cd $HOME
$ git clone git@github.com/mstaicu/dotfiles.git .dotfiles
$ cd .dotfiles
```

then use GNU stow to symlink the dot files

```
$ stow .
```

if you have existing dot files in your $HOME folder

```
$ stow --adopt .
```

