# Building VIM 8.2 from sources on Ubuntu 20.04 LTS.

<br>1. Remove all existing VIM packages.<br>
```sh
sudo apt update && sudo apt upgrade

sudo apt remove vim vim-runtime gvim vim-tiny vim-common vim-gui-common vim-nox

sudo apt autoremove

cd ~

rm -rf .vim
```

<br>2. Install prerequisite libraries.<br>
```sh
sudo apt install libncurses5-dev libgtk2.0-dev libatk1.0-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python2-dev \
python3-dev ruby-dev lua5.2 liblua5.2-dev libperl-dev git \
mono-complete golang nodejs default-jdk npm build-essential cmake
```

<br>3. Fetch VIM 8.2 from Git repo.<br>
```sh
cd ~

git clone https://github.com/vim/vim.git Vim
```

<br>4. Compile sources with options we need like python3 or ruby.<br>
```sh
cd Vim

./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=$(python3-config --configdir) \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local

make VIMRUNTIMEDIR=/usr/local/share/vim/vim82

sudo make install
```

<br>5. Check version of VIM is 8.2<br>
`vim --version`

<br>6. Create .vim folder, and fetch `.vimrc`, `html.skel` and `css.skel` files.<br>
```sh
cd ~

mkdir .vim

wget https://raw.githubusercontent.com/Flo-Slv/Dotfiles/master/vim/.vimrc

wget -P ~/.vim https://raw.githubusercontent.com/Flo-Slv/Dotfiles/master/vim/html.skel

wget -P ~/.vim https://raw.githubusercontent.com/Flo-Slv/Dotfiles/master/vim/css.skel
```

<br>7. Open .vimrc, reload vim, install plugins and finalize installation of YouCompleteMe plugin.<br>
```sh
vim .vimrc

:so %

:PlugInstall

:wq

cd ~/.vim/plugged/youcompleteme

python3 install.py --all
```

