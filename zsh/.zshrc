############
## .zshrc ##
############

# by Flo Slv


# Path to oh-my-zsh installation.
export ZSH="$HOME/Flo/Dotfiles/zsh/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys-flo"
# ZSH_THEME="ys"

plugins=(git command-not-found node thefuck zsh-navigation-tools)

source $ZSH/oh-my-zsh.sh


# Remove all unnecessary aliases created by oh-my-zsh
unalias ${(k)aliases}
unalias "..."
unalias "...."
unalias "....."
unalias "......"


# List aliases
alias la="ls -lAh"
alias ls="ls --color=tty"

# TMUX aliases
alias tm="tmux -f ~/Flo/Dotfiles/tmux/.tmux.conf new -s"
alias tma="tmux attach-session" # The last session.
alias tman="tmux attach-session -t"
alias tmls="tmux ls"
alias tmk="tmux kill-session -t"

# Git aliases
alias gs="git status"
alias gc="git commit -m"
alias gpo="git pull origin"

# fzf aliases
alias ff="fzf"
alias ffc"=fzf --preview 'batcat --style=numbers --color=always --line-range :500 {}'"
alias ft="fzf-tmux"
alias ftt="fzf-tmux -p"

# Find the name of WM_CLASS to set in i3 config file.
alias xg="xprop | grep WM_CLASS"

# If UBUNTU SOFTWARE does not load anymore.
alias ubuntu-software="killall snap-store"


# Thefuck
eval $(thefuck --alias)


# Colored man
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'


# Path to .vimrc
export VIMINIT="source ~/Flo/Dotfiles/vim/.vimrc"


# fzf configuration.
export FZF_DEFAULT_OPTS='--height 40%'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Open terminal to my personal folder.
cd ~/Flo
