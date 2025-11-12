# dotfiles

All my dotfiles in one place. Neat! 😁

## Structure

Anything pertaining to zsh-configurations can be found in the `zsh-configs` folder.
All Scripts are separated into folders based on their intended platform (e.g., `linux-scripts`, `macos-scripts`).

## Installation

### Install scripts

To use these scripts simply clone the repository to your home folder (~) on unix-based systems, then navigate to the appropriate script folder and run the initialization script.
All scripts are separated into individual script files based on functionality or piece of initialization, and then bubble up to the main `initialize-system.sh` script.

```sh
cd ~
# Clone the repository
git clone https://github.com/Pixelbrewer/dotfiles.git
# Navigate to the appropriate script folder (e.g., arch or mac)
cd ~/dotfiles/scripts/arch/
# Set executable permissions for the install scripts
chmod +x initialize-syste.sh
# Run the initialization script
./initialize-system.sh
```

### Zsh configs

To use these zsh dotfiles simply clone the repository to your home folder (~) on unix-based systems, then source the base .zshrc file inside the zsh-configs folder inside the default .zshrc file.

```sh
cd ~
# Clone the repository
git clone https://github.com/Pixelbrewer/dotfiles.git
# Open the default .zshrc file in neovim. If you do not have neovim installed you can use any text editor of your choice.
nvim ~/.zshrc
# Add the following line to the file:
source ~/.dotfiles/zsh-configs/.zshrc
```

## Work still to be done

TODO:

- [ ] Add more documentation to each script file
- [ ] Create installation scripts for other Linux distros (e.g., Ubuntu, Fedora)
- [ ] Add error handling to scripts
- [ ] Create backup scripts for existing configurations before overwriting
- [ ] Add more zsh plugins and themes, specifically starship.rs and it's configs.
