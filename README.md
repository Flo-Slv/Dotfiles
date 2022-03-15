# My personal dotfiles

### i3
- [config](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.config/i3/config) => i3
- [config.ini](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.config/polybar/config.ini) => Polybar
- [.Xresources](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.Xresources) => Rofi
- [compton.conf](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.config/compton.conf) => Compton
- [Troubleshooting](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/Flo-guides/i3-troubleshooting.md)
- [Install](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/Flo-guides/i3-install.md) latest version of i3wm on Ubuntu 20.04 LTS.
<br>

### SHELL
- [.bashrc](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.bashrc)
- [.zshrc](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.zshrc)
- [ys-flo.zsh.theme](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.oh-my-zsh/custom/themes/ys-flo.zsh-theme) => oh-my-zsh
<br>

### TMUX
- [.tmux.conf](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.tmux.conf)
- [.tmux-powerlinerc](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.tmux-powerlinerc)
- [flo-theme.sh](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.tmux/tmux-powerline-custom-themes/flo-theme.sh)
- [Building](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/Flo-guides/tmux3.4-install.md) TMUX 3.4 from sources on Ubuntu 20.04 LTS
<br>

### VIM
- [.vimrc](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.vimrc)
- [html.skel](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.vim/html.skel)
- [css.skel](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/.vim/css.skel)
- [Building](https://github.com/Flo-Slv/.Flo-dotfiles/blob/master/Flo-guides/vim8.2-install.md) VIM 8.2 from sources on Ubuntu 20.04 LTS
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
