############
## .zshrc ##
############

# by Flo Slv

# ~/Flo/Dotfiles/zsh/.zshrc


# Path to oh-my-zsh installation.
export ZSH="$HOME/Flo/Dotfiles/zsh/.oh-my-zsh"

ZSH_THEME="ys"

plugins=(git command-not-found node thefuck zsh-navigation-tools)

source $ZSH/oh-my-zsh.sh


# Remove all unnecessary aliases created by oh-my-zsh
unalias ${(k)aliases}
unalias "..."
unalias "...."
unalias "....."
unalias "......"


alias c="clear"

# Change directory aliases
alias d="cd ~/Flo"
alias dev="cd ~/Flo/Dev"

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
alias ga="git add"
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

# Set VIM as default editor
export VISUAL=vim
export EDITOR="$VISUAL"


# fzf configuration.
export FZF_DEFAULT_OPTS='--height 40%'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Every time I open a new terminal
# 1st: open Tmux with 2 windows called Terminal and Code.
# Terminal have two panes and Code open vim .
# Focus on first pane of Terminal.
tmux has-session -t Flo || \
	tmux -f ~/Flo/Dotfiles/tmux/.tmux.conf new -s Flo -n Terminal \; \
	split-window -h \; \
	new-window -n Code vim \; \
	select-window -t 1 \; \
	select-pane -t 1 \;

# 2nd: go to Flo directory instead of $HOME.
cd /home/floslv/Flo
