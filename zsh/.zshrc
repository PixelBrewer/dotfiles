#!/bin/zsh
#############
## Aliases ##
#############

# Python aliases
alias python="python3"

# Fast fetch
alias ff="fastfetch"

# Btop
alias bt="btop"

# Nvim
alias vim="nvim"

# Directory aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"

# Clear terminal
alias cls="clear"

# Git aliases
alias gs="git status"
alias ga="git add -A"
alias gc="git commit -m"
alias gl="git log --oneline --graph --decorate"
alias lg="lazygit"

# Bat
alias cat="bat"

# Navigational aliases
alias proj="cd ~/Drives/BagEnd/Projects/"
alias dot="cd ~/dotfiles/"
alias vault="cd ~/Drives/Erebor/Vault/"

# Pacman
alias upgrade="sudo pacman -Syu"
alias install="sudo pacman -S"
alias remove="sudo pacman -R"
alias search="pacman -Ss"
alias list="pacman -Q"
alias info="pacman -Si"

# Paru
alias pupgrade="paru -Sua"

# Docker
alias ld="lazydocker"

# Pnpm Uncomment this to alias npm as pnpm
# alias npm="pnpm"

#############
## Plugins ##
#############

if [ "$(uname -s)" = "Linux" ]; then
# Linux specific settings
# Zsh autosuggestions:
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Zsh syntax highlighting:
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

fi

if [ "$(uname -s)" = "Darwin" ]; then
# MacOS specific settings
# Zsh autosuggestions:
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Zsh syntax highlighting:
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

############
## Docker ##
############

if [ "$(uname -s)" = "Linux" ]; then
# Linux specific configs
fpath=(/home/alex/.docker/completions $fpath)
autoload -Uz compinit
compinit
fi

if [ "$(uname -s)" = "Darwin" ]; then
# MacOS specific configs
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/alex/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
fi

####################################
## Package Utilities and Includes ##
####################################

if [ "$(uname -s)" = "Linux" ]; then
# Linux specific settings
# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Bun completions
[ -s "/home/alex/.bun/_bun" ] && source "/home/alex/.bun/_bun"
# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Deno
# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/alex/.zsh/completions:"* ]]; then export FPATH="/home/alex/.zsh/completions:$FPATH"; fi
. "/home/alex/.deno/env"
fi

if [ "$(uname -s)" = "Darwin" ]; then
# MacOS specific settings
# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Bun completions
[ -s "/Users/alex/.bun/_bun" ] && source "/Users/alex/.bun/_bun"
# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Deno
# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/alex/.zsh/completions:"* ]]; then export FPATH="/Users/alex/.zsh/completions:$FPATH"; fi
. "/Users/alex/.deno/env"
fi

# pnpm
export PNPM_HOME="/home/alex/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

#################
## Evaluations ##
#################

# Starship prompt
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Fzf
source <(fzf --zsh)

# Load Angular CLI autocompletion.
source <(ng completion script)

###################
## End of .zshrc ##
###################