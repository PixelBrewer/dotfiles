#!/bin/bash

# This script will clone the dotfiles repository from GitHub and ensure it is in the correct
# location for further setup scripts to use.

if [ ! -d "$HOME/dotfiles" ]; then
	git clone https://github.com/PixelBrewer/dotfiles.git "$HOME/dotfiles"
	echo "Dotfiles repository cloned to $HOME/dotfiles."
else
	echo "Dotfiles repository already exists at $HOME/dotfiles."
fi
