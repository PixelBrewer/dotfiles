#!/bin/bash

# This script is your one stop shop for initializing your system with essential configurations and settings.

# Update and upgrade the system
sudo pacman -Syu --noconfirm
echo "System updated and upgraded."
echo "System ready for new packages!"

# If .zshrc does not exist, create it
[ -f ~/.zshrc ] || touch ~/.zshrc
echo ".zshrc file checked/created."

# Set git configurations
./set-git-configs.sh
echo "Git configurations set."

# Clone dotfiles repository
./clone-dotfiles-repo.sh
echo "Dotfiles repository checked/cloned."

# Install system utilities
./install-systemutil-packages.sh
echo "System utilities installed."

# Install AUR packages
./install-aur-packages.sh
echo "AUR packages installed."

# Install pacman packages
./install-pacman-packages.sh
echo "Pacman packages installed."

# Install coding languages and tools
./install-coding-language-packages.sh
echo "Coding languages and tools installed."

echo "System initialization complete."
