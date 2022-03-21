" #######################
" ## VIM CONFIGURATION ##
" #######################

" by Flo Slv

" ~/Flo/Dotfiles/vim/.vimrc


" ##################
" # BASIC COMMANDS #
" ##################

" REMOVE COMPATIBILITY WITH VI
set nocompatible

"SYNTAX HIGHLIGHTING
syntax on
filetype on
filetype plugin on
filetype indent on

" DISPLAY
set title
set number
set relativenumber
set ruler
set wrap
set scrolloff=10
set hidden
set mouse=a
set ttymouse=xterm2
set cursorline
set cc=80
set textwidth=80
set shiftwidth=4
set tabstop=4
set softtabstop=4
set showcmd
set backspace=indent,eol,start
set encoding=utf-8
set signcolumn=yes
set cmdheight=2

" INDENTATION
set autoindent
set smartindent
set list lcs=tab:\|\ " Show tab indent with |
"set foldmethod=indent

" SEARCH
set ignorecase
set smartcase
set incsearch
set hlsearch
set history=200
set undolevels=200

" COMPLETION
set wildmenu
set wildmode=list:longest,list:full
set wildignore=*.o,*.r,*.so,*.sl

" REMOVE BEEP
set visualbell
set noerrorbells


" ###########
" # MAPPING #
" ###########

" SET LEADER KEY AS THE SPACE BAR
let mapleader = ' '

" SHORTCUTS
inoremap ( ()<left>
inoremap [ []<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap { {}<left>
inoremap < <><left>

" TO NOT USE ARROWS
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" BUFFERS
nmap <leader>db :bdelete<CR>

" TABS
nmap <leader>tc :tabclose<CR>
nnoremap H gT
nnoremap L gt

" COPY FROM CURSOR TO END OF LINE
nnoremap Y y$

" KEEPING IN CENTERED => for unknow reasons, it's not working...
" nnoremap n nzzzv
" nnoremap N Nzzzv

" NAVIGATE EASILY BETWEEN WINDOWS
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" UNDO BREAK POINTS
inoremap , ,<c-g>u
inoremap ; ;<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" MOVING TEXT
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==


" ################
" # CUSTOM PATHS #
" ################

" CUSTOM FOLDER FOR VIM CONFIG
" PURPOSE IS TO NOT BE AT $HOME
let rtp=&runtimepath
set runtimepath=~/Flo/Dotfiles/vim/.vim
let &runtimepath.=','.rtp.',~/Flo/Dotfiles/vim/.vim/after'

" PATH TO .viminfo
set viminfo+=n~/Flo/Dotfiles/vim/.viminfo

" FOLDERS FOR .swp FILES AND BACKUP & UNDO
set directory=~/Flo/Dotfiles/vim/swap//,.,~/tmp,/var/tmp,/tmp
set backupdir=~/Flo/Dotfiles/vim/backup//,.,~/tmp,~/
set undodir=~/Flo/Dotfiles/vim/undo//,.


" ############
" # VIM-PLUG #
" ############

" AUTOMATIC INSTALLATION
let data_dir = '~/Flo/Dotfiles/vim/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS
call plug#begin()

Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'gcmt/taboo.vim'
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'ap/vim-css-color'
Plug 'junegunn/vim-slash'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'gelguy/wilder.nvim'
Plug 'psliwka/vim-smoothie'
Plug 'kshenoy/vim-signature'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mbbill/undotree'
Plug 'stsewd/fzf-checkout.vim'

Plug 'valloric/youcompleteme'
" cd ~/.vim/plugged/youcompleteme
" python3 install.py --all

call plug#end()


" ##################
" # PLUGINS CONFIG #
" ##################

" PALENIGHT THEME
set background=dark
colorscheme palenight
if (has("termguicolors"))
    set termguicolors
endif


" VIM-AIRLINE
let g:airline_theme='palenight'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 1


" EMMET
let g:user_emmet_install_global = 0


" NERDTREE
" When VIM start, open NERDTree and put the cursor back in editor.
autocmd VimEnter * NERDTree | wincmd p

" Exit VIM if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Shortcuts to open NERDTree.
nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Show hidden files.
let NERDTreeShowHidden=1


" WILDER
autocmd VimEnter * ++once call s:wilder_init()

function! s:wilder_init() abort
    call wilder#setup({'modes': [':', '/', '?']})

    call wilder#set_option('pipeline', [
	\   wilder#branch(
	\     wilder#cmdline_pipeline({
	\       'language': 'vim',
	\       'fuzzy': 1,
	\       'fuzzy_filter': wilder#vim_fuzzy_filter(),
	\     }),
	\     wilder#search_pipeline(),
	\   ),
	\ ])

    call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
	\ 'highlighter': wilder#basic_highlighter(),
	\ 'min_width': '40%',
	\ 'max_height': '20%',
	\ 'reverse': 0,
	\ 'left': [
		\   ' ', wilder#popupmenu_devicons(),
	\ ],
	\ 'right': [
		\   ' ', wilder#popupmenu_scrollbar(),
	\ ],
	\ })))
endfunction


" FZF
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>g :History<CR>
nnoremap <silent> <leader>b :Buffers<CR>


" UNDOTREE
nnoremap <leader>d :UndotreeToggle<CR>

if has("persistent_undo")
	let target_path = expand('~/Flo/Dotfiles/vim/undo')

	" If the location does not exist,
	" create the directory and any parent directories.
	if !isdirectory(target_path)
		call mkdir(target_path, "p", 0700)
	endif

	let &undodir=target_path
	set undofile
endif


" VIM-FUGITIVE
nmap <leader>gs :G<CR>


" FZF-CHECKOUT
nnoremap <leader>gb :GBranches<CR>


" HTML & CSS
autocmd FileType html,css EmmetInstall
au BufNewFile *.html 0r ~/Flo/Dotfiles/vim/.vim/html.skel | let IndentStyle = "html"
au BufNewFile *.css 0r ~/Flo/Dotfiles/vim/.vim/css.skel | let IndentStyle = "css"


" #############
" # FUNCTIONS #
" #############

" Every time I save a file, TrimWhitespace at end of lines.
" Thanks The Primeagen for this cool function !
function! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfunction

augroup FLO_SLV
	autocmd!
	autocmd BufWritePre * :call TrimWhitespace()
augroup END
