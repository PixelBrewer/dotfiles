#/bin/bash

# This script will install various coding languages and their associated tools on Arch based distributions.

# Neovim
sudo pacman -S --noconfirm neovim
echo "Neovim installed. You can run it by typing 'nvim' in the terminal."

# Git
sudo pacman -S --noconfirm git
echo "Git installed. You can use it for version control."

paru -S --noconfirm visual-studio-code-bin
echo "Visual Studio Code installed. You can run it by typing 'code' in the terminal."