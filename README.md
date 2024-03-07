# My dotfiles

This directory contains the dotfiles for my Debian system

## Requirements

Ensure you have the following installed on your system

### Git

```bash
apt install -y git
```

### Stow

```bash
apt install -y stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```bash
git clone https://github.com/JaydotMurf/dotfiles.git
cd dotfiles
```

then use GNU Stow to create syslinks

```bash
stow .
```
