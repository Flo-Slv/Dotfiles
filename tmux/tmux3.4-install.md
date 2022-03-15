# Building TMUX 3.4 from sources on Ubuntu 20.04 LTS

<br>1. Remove existing TMUX package.<br>
```sh
sudo apt update && sudo apt upgrade

sudo apt remove tmux

sudo apt autoremove

cd ~

rm -rf .tmux
```

<br>2. Install prerequisite libraries.<br>
```sh
sudo apt install libevent-dev ncurses-dev build-essential bison pkg-config
```

<br>3. Fetch TMUX 3.4 from Git repo.<br>
```sh
cd ~

git clone https://github.com/tmux/tmux.git Tmux
```

<br>4. Compile sources.<br>
```sh
cd Tmux

sh autogen.sh

./configure

make && sudo make install
```

<br>5. Check version of TMUX is 3.4<br>
```sh
tmux -V
```

<br>6. Create .tmux and tmux-powerline-custom-themes folders.<br>
```sh
cd ~

mkdir .tmux .tmux/tmux-powerline-custom-themes
```

<br>7. Clone TMUX Plugin Manager and TMUX Powerline, and fetch `.tmux.conf` and `.tmux-powerlinerc` files from Git repo.<br>
```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone https://github.com/erikw/tmux-powerline.git ~/.tmux/plugins/tmux-powerline

wget https://raw.githubusercontent.com/Flo-Slv/Dotfiles/master/tmux/.tmux.conf

wget https://raw.githubusercontent.com/Flo-Slv/Dotfiles/master/tmux/.tmux-powerlinerc

wget -P ~/.tmux/tmux-powerline-custom-themes https://raw.githubusercontent.com/Flo-Slv/Dotfiles/master/tmux/flo-theme.sh
```

<br>8. Open .tmux.conf, install plugins and reload TMUX.<br>
```sh
vim .tmux.conf

ctrl+z I

ctrl+z r
```
