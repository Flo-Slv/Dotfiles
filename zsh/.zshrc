############
## .zshrc ##
############

# by Flo Slv

# ~/Flo/Dotfiles/zsh/.zshrc


# Path to oh-my-zsh installation.
export ZSH="$HOME/Flo/Dotfiles/zsh/.oh-my-zsh"

ZSH_THEME="ys-flo"
# ZSH_THEME="ys"

plugins=(
	git
	command-not-found
	node
	thefuck
	zsh-navigation-tools
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# Add ctrl+space to autocomplete in prompt.
bindkey '^ ' autosuggest-accept


# Remove all unnecessary aliases created by oh-my-zsh
unalias ${(k)aliases}
unalias "..."
unalias "...."
unalias "....."
unalias "......"


alias c="clear"
alias n="nvim"
alias vim="nvim"


# Change directory aliases
alias d="cd ~/Flo"
alias dev="cd ~/Flo/Dev"
alias dot="cd ~/Flo/Dotfiles"


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
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gpo='git pull origin'


# fzf aliases
alias ff="fzf"
alias ffc"=fzf --preview 'batcat --style=numbers --color=always --line-range :500 {}'"
alias ft="fzf-tmux"
alias ftt="fzf-tmux -p"


# MongoDB aliases
alias ms="sudo systemctl start mongod"
alias mi="sudo systemctl status mongod"
alias md="sudo systemctl stop mongod"
alias mr="sudo systemctl restart mongod"


# Find the name of WM_CLASS to set in i3 config file.
alias xg="xprop | grep WM_CLASS"


# If UBUNTU SOFTWARE does not load anymore.
alias ubuntu-software="killall snap-store"


# Launch Gnome Control Center
alias settings="env XDG_CURRENT_DESKTOP=GNOME gnome-control-center"


# Add Github key to SSH agent.
alias ss="ssh-add ~/.ssh/id_ed25519"


# Launch gitui app.
alias ui="gitui"


# LUA-LANGUAGE-SERVER (sumneko_lua)
alias luamake=/home/floslv/lua-language-server/3rd/luamake/luamake


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
# export VIMINIT="source ~/Flo/Dotfiles/vim-old/.vimrc"
# export VIMINIT="source ~/Flo/Dotfiles/nvim-old/init.vim"
export VIMINIT="source ~/Flo/Dotfiles/nvim/init.lua"

# Set VIM as default editor
# export VISUAL=vim
export VISUAL=nvim
export EDITOR="$VISUAL"


# Add directory to the PATH
export PATH="/home/floslv/.local/bin:$PATH"


# fzf configuration.
export FZF_DEFAULT_OPTS='--height 40%'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Every time I open a new terminal.
sudo --validate # First go to /etc/sudoers.d/sudoers and add this line: Defaults !tty_tickets
tmux has-session -t Flo || \
	tmux -f ~/Flo/Dotfiles/tmux/.tmux.conf new -s Flo -n Terminal \; \
	split-window -c ~/Flo -h \; \
	select-pane -t 1 \; \
	split-window -c ~/ -v \; \
	select-pane -t 2 \; \
	resize-pane -t 2 -y 5 \; \
	send-keys 'sudo -i' Enter \; \
	send-keys 'fsmall' Enter \; \
	send-keys 'xset r rate 220 50' Enter \; \
	send-keys 'exit' Enter \; \
	send-keys 'exit' Enter \; \
	new-window -c ~/Flo/Dev -n Neovim \; \
	new-window -c ~/ -n Btop btop \; \
	new-window -c ~/ -n Infos \; \
	split-window -c ~/ -h \; \
	select-pane -t 1 \; \
	send-keys 'watch nvidia-smi -q --display=UTILIZATION' Enter \; \
	select-pane -t 2 \; \
	send-keys 'watch sensors' Enter \; \
	select-window -t 1 \; \
	select-pane -t 2 \; \
	select-pane -t 1 \; \
# xset: to set speed of keyboard typing since Gnome Control Center not working w/ i3wm
# fsmall is to run custom script to control fan intensity:
# fstop, fsmall, fmedium and ffull.
