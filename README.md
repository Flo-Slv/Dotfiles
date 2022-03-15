# My personal dotfiles

### i3
- [config](https://github.com/Flo-Slv/Dotfiles/blob/master/i3wm/i3/i3/config) => i3
- [config.ini](https://github.com/Flo-Slv/Dotfiles/blob/master/i3wm/i3/polybar/config.ini) => Polybar
- [.Xresources](https://github.com/Flo-Slv/Dotfiles/blob/master/i3wm/Rofi/.Xresources) => Rofi
- [compton.conf](https://github.com/Flo-Slv/Dotfiles/blob/master/i3wm/i3/compton.conf) => Compton
- [Troubleshooting](https://github.com/Flo-Slv/Dotfiles/blob/master/i3wm/i3-troubleshooting.md)
- [Install](https://github.com/Flo-Slv/Dotfiles/blob/master/i3wm/i3-install.md) latest version of i3wm on Ubuntu 20.04 LTS.
<br>

### SHELL
- [.zshrc](https://github.com/Flo-Slv/Dotfiles/blob/master/zsh/.zshrc)
- [omz-aliases](https://github.com/Flo-Slv/Dotfiles/blob/master/zsh/omz-aliases) => list of all aliases created by oh-my-zsh and plugins
<br>

### TMUX
- [.tmux.conf](https://github.com/Flo-Slv/Dotfiles/blob/master/tmux/.tmux.conf)
- [.tmux-powerlinerc](https://github.com/Flo-Slv/Dotfiles/blob/master/tmux/.tmux-powerlinerc)
- [flo-theme.sh](https://github.com/Flo-Slv/Dotfiles/blob/master/tmux/.tmux/tmux-powerline-custom-themes/flo-theme.sh)
- [Building](https://github.com/Flo-Slv/Dotfiles/blob/master/tmux/tmux3.4-install.md) TMUX 3.4 from sources on Ubuntu 20.04 LTS
<br>

### VIM
- [.vimrc](https://github.com/Flo-Slv/Dotfiles/blob/master/vim/.vimrc)
- [html.skel](https://github.com/Flo-Slv/Dotfiles/blob/master/vim/.vim/html.skel)
- [css.skel](https://github.com/Flo-Slv/Dotfiles/blob/master/vim/.vim/css.skel)
- [Building](https://github.com/Flo-Slv/Dotfiles/blob/master/vim/vim8.2-install.md) VIM 8.2 from sources on Ubuntu 20.04 LTS
<br>

### Explanations
- *VIM* installed in `~/Flo/Dotfiles`.<br>
Check [VIM README](https://github.com/Flo-Slv/Dotfiles/tree/master/vim) to see how I deal to install VIM in custom folder and not in `$HOME`.
<br>

- *TMUX* installed in `~/Flo/Dotfiles`.<br>
Check my `.tmux.conf` and `.zshrc` to see how I deal to install TMUX in custom folder and not in `$HOME`.
<br>

- *i3* installed in `~/Flo/Dotfiles/i3wm/i3/i3`.<br>
I used `stow` to simulate installation in `~/.config/i3`.
<br>

- *ZSH* (with *oh-my-zsh*) installed in `~/Flo/Dotfiles/zsh`.<br>
I used `stow` to simulate installation in `~/.zshrc` and `~/.oh-my-zsh`.
<br>

### How to deal with stow
```sh
# First of all, install stow xD
sudo apt install stow

# Specify the target with -t parameter.
# Example with the i3 directory:
cd ~/Flo/Dotfiles/i3wm/i3
stow -t ~/.config i3

# "Unstow" with -D parameter.
cd ~/Flo/Dotfiles
stow -t ~/.config -D i3
```
<br>

### Some cool commands that can help !
```sh
# To know shell we use (2 options)
echo $SHELL
ls -l /proc/$$/exe

# To know terminal we use
echo $TERM

# To check if terminal is truecolor
echo $COLORTERM

# To have more info on Terminal
ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$)

# To see all env variables
printenv
```
