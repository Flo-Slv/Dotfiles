" ##########################
" ## NEOVIM CONFIGURATION ##
" #########################

" by Flo Slv

" ~/Flo/Dotfiles/nvim/init.vim


" ##################
" # BASIC COMMANDS #
" ##################

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
set noswapfile
set nobackup
set undodir='~/Flo/Dotfiles/nvim/undodir'
set undofile

" INDENTATION
set autoindent
set smartindent
set list lcs=tab:\|\ " Show tab indent with a |
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
" inoremap < <><left>

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
nmap <leader>bd :bdelete<CR>

" TABS
nmap <leader>tc :tabclose<CR>
nnoremap H gT
nnoremap L gt

" COPY FROM CURSOR TO END OF LINE
nnoremap Y y$

" KEEPING IN CENTERED
nnoremap n nzzzv
nnoremap N Nzzzv

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


" ############
" # VIM-PLUG #
" ############

" AUTOMATIC INSTALLATION
let data_dir = '~/Flo/Dotfiles/nvim/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS
call plug#begin('~/Flo/Dotfiles/nvim/.vim/plugged')

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'itchyny/lightline.vim'

Plug 'kyazdani42/nvim-tree.lua'

Plug 'glepnir/dashboard-nvim'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

Plug 'ThePrimeagen/harpoon'


Plug 'AndrewRadev/tagalong.vim'
Plug 'ap/vim-css-color'

Plug 'gelguy/wilder.nvim'

Plug 'gcmt/taboo.vim'
Plug 'kshenoy/vim-signature'

Plug 'mbbill/undotree'

call plug#end()


" ##################
" # PLUGINS CONFIG #
" ##################

" TOKYONIGHT THEME
set background=dark
colorscheme tokyonight


" LIGHTLINE
let g:lightline = {
	\'colorscheme': 'tokyonight',
	\'active': {
		\'left': [ [ 'mode', 'paste' ],
		\[ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\},
	\'component_function': {
		\'gitbranch': 'FugitiveHead'
	\}
\}


" DASBOARD
lua << EOF
local db = require("dashboard")
db.custom_header = {
  \'     ████               ████       ',
  \'    ███                   ███      ',
  \'   ███                     ███     ',
  \'  ███                       ███    ',
  \' ███                         ███   ',
  \'████                         ████  ',
  \'████                         ████  ',
  \'██████       ███████       ██████  ',
  \'█████████████████████████████████  ',
  \' ███████████████████████████████   ',
  \'  ████ ███████████████████ ████    ',
  \'       ███▀███████████▀███         ',
  \'      ████──▀███████▀──████        ',
  \'      █████───█████───█████        ',
  \'       ███████████████████         ',
  \'        █████████████████          ',
  \'         ███████████████           ',
  \'          █████████████            ',
  \'           ███████████             ',
  \'          ███──▀▀▀──███            ',
  \'          ███─█████─███            ',
  \'           ███─███─███             ',
  \'            █████████              ',
\ ' ',
\ ' ',
\ ' '
}
db.custom_center = {
	{
		icon = '  ',
		desc = 'Find file',
		action = 'Telescope find_files find_command=rg,--hidden,--files'
	},
	{
		desc = 'Create new file',
		action = 'DashboardNewFile'
	}
}
db.custom_footer = {
	' ',
	' ',
	'Welcome back Flo !',
	' ',
	os.date("%d/%m/%Y %H:%M")
}
EOF


" NVIM-TREE
lua << EOF
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" }
			}
		}
	},
	renderer = {
		group_empty = true
	},
	filters = {
		dotfiles = false
	}
})
EOF

nnoremap <C-a> :NvimTreeToggle<cr>
nnoremap <C-f> :NvimTreeFindFile<cr>


" TELESCOPE
nnoremap <leader>ff <cmd>Telescope find_files find_command=rg,--hidden,--files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>


" HARPOON
nnoremap <leader>af :lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>aa :lua require("harpoon.ui").toggle_quick_menu()<cr>


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


" UNDOTREE
nnoremap <leader>d :UndotreeToggle<CR>

if has("persistent_undo")
	let target_path = expand('~/Flo/Dotfiles/nvim/undodir')

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
augroup END
	autocmd BufWritePre * :call TrimWhitespace()
