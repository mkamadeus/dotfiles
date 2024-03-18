# 🐢 `.dotfiles`

## Introduction

This repository contains my personal dotfiles.
It is managed using GNU Stow and Taskfile.
The dotfiles in this repository is MacOS oriented and might not work as intended on other operating systems.

## Requirements

- GNU Stow (https://www.gnu.org/software/stow/)
- Taskfile (https://taskfile.dev/)

## Installation

### General Setup

```bash
git clone git@github.com:mkamadeus/dotfiles $HOME/.dotfiles
cd $HOME/.dotfiles

# most of the time, this should be sufficient.
task setup
```

### Private Configuration Setup

Since I have some configuration that contains sensitive information, I put it under `private/**` for any configurations that contains secrets.
