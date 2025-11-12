#!/bin/zsh

# Setting up aliases
source ~/dotfiles/zsh-configs/zsh-aliases

# Runtimes and specific package needs
source ~/dotfiles/zsh-configs/zsh-package-utils

# starship prompt
source ~/dotfiles/zsh-configs/zsh-evals

# Zsh plugins
source ~/dotfiles/zsh-configs/zsh-plugins

# Load Angular CLI autocompletion.
source <(ng completion script)
