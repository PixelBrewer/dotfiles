# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

. "$HOME/.local/share/../bin/env"
. "$HOME/.cargo/env"

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

# Zed
alias zed="zeditor"

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
alias proj="cd ~/Projects/"
alias dot="cd ~/dotfiles/"
alias vault="cd ~/Drives/Erebor/Vault/"
alias glproj="cd ~/Projects/GitLab/"
alias ghproj="cd ~/Projects/Github/"

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

################
### Launchers ##
################

alias gitlab="open https://www.gitlab.com"
alias github="open https://www.github.com"
alias yt="open https://www.youtube.com"
alias tw="open https://www.twitch.tv"
alias ddg="open https://www.duckduckgo.com"

######################
### Custom Exports ###
######################

export PATH="$HOME/.govm/shim:$PATH"

# opencode
export PATH=/home/alex/.opencode/bin:$PATH
