#!/bin/bash

# This script will install pacman specific packages that are not simply utilities.
# These are in order of priority for installation.

# Zsh
sudo pacman -S --noconfirm zsh
chsh -s /bin/zsh
echo "Zsh installed and set as default shell. You may need to log out and back in for this to take effect."

# Ghostty
sudo pacman -S --noconfirm ghostty
echo "Ghostty installed."

# stow
sudo pacman -S --noconfirm stow
echo "Stow installed. You can use it for managing dotfiles."

# Zsh-autosuggestions
sudo pacman -S --noconfirm zsh-autosuggestions
echo "Zsh-autosuggestions installed. You can use it to get suggestions in Zsh."

# Zsh-syntax-highlighting
sudo pacman -S --noconfirm zsh-syntax-highlighting
echo "Zsh-syntax-highlighting installed. You can use it to get syntax highlighting in Zsh."

# Nerd fonts
sudo pacman -S --noconfirm ttf-cascadia-code-nerd ttf-cascadia-mono-nerd ttf-jetbrains-mono-nerd ttf-jetbrains-mono
echo "Nerd fonts installed. You can use them in your terminal and code editor."

# Tmux
sudo pacman -S --noconfirm tmux
echo "Tmux installed. You can run it by typing 'tmux' in the terminal."

echo "All pacman packages have been installed."