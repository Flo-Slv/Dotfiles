# My VIM story

I needed last version of VIM, which is the 8.2 (February 2022), and build this version with python3.

Python3 is required to run some plugins.

[See](https://github.com/Flo-Slv/Dotfiles/blob/master/vim/vim8.2-install.md) how to build VIM 8.2 from source.
<br><br>

As I explained in global README, I want to organize my dotfiles in one folder: `~/Flo/Dotfiles`

For VIM, I did not choose to deal with `stow`.
<br><br>

So for VIM, my folder is `~/Flo/Dotfiles/vim`.
<br><br>

### 1. Move all VIM files into `~/Flo/Dotfiles/vim`
```sh
cd ~

mv .vimrc .vim ~/Flo/Dotfiles/vim

cd ~/Flo/Dotfiles/vim

ls -lAh
$ .vimrc .vim
```

### 2. Change `.zshrc` to add `.vimrc` path.
```sh
cd ~

vim .zshrc

# Add this line
export VIMINIT="source ~/Flo/Dotfiles/vim/.vimrc"
```

### 3. Modify .vimrc to change runtimepath and .viminfo path.
```sh
cd ~/Flo/Dotfiles/vim

vim .vimrc

# Add this lines before declaring your Plugin Manager (Vim-Plug, Vundle etc...).
let rtp=&runtimepath
set runtimepath=~/Flo/Dotfiles/vim/.vim
let &runtimepath.=','.rtp.',~/Flo/Dotfiles/vim/.vim/after'

set viminfo+=n~/Flo/Dotfiles/vim/.viminfo
```

### 4. Optional: create folders to store .swp files, backup and undo.
```sh
cd ~/Flo/Dotfiles/vim

mkdir swap backup undo

vim .vimrc

# Add this lines after declaring runtimepath and .vimfinfo path.
set directory=~/Flo/Dotfiles/vim/swap//,.,~/tmp,/var/tmp,/tmp
set backupdir=~/Flo/Dotfiles/vim/backup//,.,~/tmp,~/
set undodir=~/Flo/Dotfiles/vim/undo//,.
```

### 5. Delete Plugin Manager folders/files to re do a fresh install. Example with Vim-Plug.
```sh
cd ~/Flo/Dotfiles/vim/.vim

rm -rf plugged
rm -rf autoload

# Re create an empty autoload folder.
mkdir autoload
```

### 6. Add function to initialize your Plugin Manager. I use Vim-Plug.
```sh
cd ~/Flo/Dotfiles/vim

vim .vimrc

# Add this lines after declaring runtimepath and .viminfo path.
" Automatic installation
let data_dir = '~/Flo/Dotfiles/vim/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()
call plug#end()
```

### 7. Re source VIM and install your plugins.
```sh
cd ~/Flo/Dotfiles/vim

vim .vimrc

:so %
:PlugInstall
```
