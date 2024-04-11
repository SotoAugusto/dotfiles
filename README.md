# dotfiles

This directory contains the dotfiles for my linux system

## Requirements

Ensure you have the following installed on your system

### Git

```shell
sudo apt install git
```

### Stow

```shell
sudo apt install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```shell
git clone git@github.com/sotoaugusto/dotfiles.git
https://github.com/SotoAugusto/dotfiles.git

cd dotfiles
```

then use GNU stow to create symlinks

```shell
stow .
```
