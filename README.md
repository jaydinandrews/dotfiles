# Jay's dotfiles

## Requirements

- Git `apt install git`
- GNU Stow `apt install stow`

## Installation

Simply clone this repo to desired directory and use GNU Stow to symlink to `$HOME`
```
$ git clone git@github.com:jaydinandrews/dotfiles.git
$ mkdir ~/.dotfiles
$ mv dotfiles/* ~/.dotfiles
$ rmdir dotfiles
$ cd ~/.dotfiles
$ stow .
```
