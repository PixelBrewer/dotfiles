#!/bin/bash

# This script will install some basic system utilites on Arch based distributions.
# These utilites are in order of importance for a basic system setup.

# Paru (AUR helper)
if ! command -v paru &> /dev/null
then
	echo "Paru not found, installing Paru AUR helper..."
	sudo pacman -S --needed base-devel git --noconfirm
	git clone https://aur.archlinux.org/paru.git
	cd paru
	makepkg -si --noconfirm
	cd ..
	rm -rf paru
else
	echo "Paru is already installed."
fi
echo "Paru installation check complete."

# Fastfetch
sudo pacman -S --noconfirm fastfetch
echo "Fastfetch installed. You can run it by typing 'fastfetch' in the terminal."

# Btop
sudo pacman -S --noconfirm btop
echo "Btop installed. You can run it by typing 'btop' in the terminal."

# Bat
sudo pacman -S --noconfirm bat
echo "Bat installed. You can run it by typing 'bat' in the terminal instead of cat."

# Fzf
sudo pacman -S --noconfirm fzf
echo "Fzf installed. You can use it for fuzzy finding in the terminal."

# Ripgrep
sudo pacman -S --noconfirm ripgrep
echo "Ripgrep installed. You can use it for fast searching in files."

# Zoxide
sudo pacman -S --noconfirm zoxide
echo "Zoxide installed. You can use it for smarter directory navigation."

echo "All system specific utilites have been installed."
