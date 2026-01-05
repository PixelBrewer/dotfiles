# dotfiles

All my dotfiles in one place. Neat! 😁

## Structure

Anything pertaining to zsh-configurations can be found in the `zsh-configs` folder.
All Scripts are separated into folders based on their intended platform (![Arch Linux Logo](/assets/arch-linux.svg), ![Classic Apple Logo](/assets/apple-alt.svg)).

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

To use these zsh dotfiles simply clone the repository to your home folder (~) on unix-based systems, then run the "install.sh" scripts in the directories pertaining to the individual dotfiles you want.
This will copy the dotfile or config folder to the appropriate directory on the client machine.

```sh
cd ~
# Clone the repository
git clone https://github.com/Pixelbrewer/dotfiles.git
# Navigate to the desired config directory. I will use zsh for example.
cd zsh
# Add execute permissions on the install.sh script
chmod +x install.sh
# Run the install script
./install.sh
```

## Work still to be done

TODO:

- [ ] Create installation scripts for other Linux distros (e.g., Ubuntu, Fedora)
- [ ] Add error handling to scripts
- [ ] Create backup scripts for existing configurations before overwriting
