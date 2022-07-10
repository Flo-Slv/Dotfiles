# My personal dotfiles

### Purpose
The idea is to keep all my dotfiles in the same folder.<br>
In this way, I can easily manage it with git / github to install it in a new computer.<br><br>

Moreover, I don't really like how Linux organize all dotfiles and apps installation. If you look into your `$HOME` folder, some of them are in `~/.config` directory, others in their own folder, and others like `.vimrc` in the `$HOME` directly.<br><br>

When I open my terminal, I just want a clean space with folders like `Downloads`, `Dotfiles`, `Wallpapers`, `Dev` and so on !<br><br>

I use **Ubuntu 20.04 LTS** as an operating system.<br>
I use **i3** as a window manager.<br>
I use **TMUX** as a terminal multiplexer.<br>
I use **NEOVIM** as an editor.<br><br>

My workflow is pretty basic and I tend to not use my mouse. Even in Brave or Firefox thanks to the Vimium extension !
<br><br>

So, in the end, I created a simple folder called `Flo` in my `$HOME`.<br>
Inside it, there is my `Dotfiles` directory and folders I use every day. Everything is clean and my mind is in peace xD<br><br>

To deal with that and keep my dotfiles in the same folder, I used a mixed between `stow`, which is a symlink manager, and some tricks for VIM and TMUX to changes their folders from `$HOME` to my custom one.<br><br>

Next step is to create an installation script to automate this process.<br><br>

---
<br>

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
- [.zshenv](https://github.com/Flo-Slv/Dotfiles/blob/master/zsh/.zshenv)
- [omz-aliases](https://github.com/Flo-Slv/Dotfiles/blob/master/zsh/omz-aliases) => list of all aliases created by oh-my-zsh and plugins
- [Install](https://github.com/Flo-Slv/Dotfiles/tree/master/zsh) oh-my-zsh
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
- [My VIM story](https://github.com/Flo-Slv/Dotfiles/tree/master/vim)
<br>

### NEOVIM
- [init.vim](https://github.com/Flo-Slv/Dotfiles/blob/master/nvim/init.vim)
<br>

---
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
cd ~/Flo/Dotfiles/i3wm/i3
stow -t ~/.config -D i3
```
<br>

### Some cool commands that can help !
```sh
# To know shell we use (2 options)
# First option
echo $SHELL

# Second option
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
