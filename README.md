# dotfiles ![Build Status][build-status]

A collection of personalized dotfiles to configure and streamline a development environment.

Inspired by [anishathalye/dotfiles][anishathalye/dotfiles]. Powered by [Dotbot][dotbot].

## Description

This repository contains configuration files (dotfiles) to set up and maintain a productive development environment. These files are tailored to optimize workflows, enhance usability, and ensure consistency across systems.

The main philosophy is that these files should be agnostic to operating systems; therefore, other machine-specific configurations are located in [setup-computer][setup-computer].

## Table of Contents

- [Usage](#usage)
- [License](#license)

## Usage

After cloning this repository, run `install` to automatically set up the development environment. Note that the install script is idempotent: it can safely be run multiple times.

You can make local customizations for some programs by editing these files:

- **zsh**: `~/.zshrc_local_before` (runs before `.zshrc`)
- **zsh**: `~/.zshrc_local_after` (runs after `.zshrc`)
- **bash**: `~/.bashrc_local_before` (runs before `.bashrc`)
- **bash**: `~/.bashrc_local_after` (runs after `.bashrc`)
- **tmux**: `~/.tmux_local.conf`
- **git**: `~/.gitconfig_local`

## License

This project is licensed under the MIT License - see the [LICENSE][license] file for details.

[build-status]: https://github.com/leorodriguesf/dotfiles/workflows/CI/badge.svg
[dotbot]: https://github.com/anishathalye/dotbot
[license]: LICENSE
[anishathalye/dotfiles]: https://github.com/anishathalye/dotfiles/tree/master
[setup-computer]: https://github.com/leorodriguesf/setup-computer
