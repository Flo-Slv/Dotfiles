" ##########################
" ## NEOVIM CONFIGURATION ##
" ##########################

" by Flo Slv

" ~/Flo/Dotfiles/nvim/init.vim


" ##################
" # BASIC COMMANDS #
" ##################

" SYNTAX HIGHLIGHTING
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

" SAVING
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
set completeopt=menu,menuone,noselect

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


" ################
" # CUSTOM PATHS #
" ################

" CUSTOM FOLDER FOR NVIM CONFIG
" PURPOSE IS TO NOT BE AT $HOME
let rtp=&runtimepath
set runtimepath=~/Flo/Dotfiles/nvim/.vim
let &runtimepath.=','.rtp.',~/Flo/Dotfiles/nvim/.vim/after'

" PATH TO .viminfo
set viminfo+=n~/Flo/Dotfiles/nvim/.viminfo


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
Plug 'glepnir/dashboard-nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'gelguy/wilder.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

Plug 'ThePrimeagen/harpoon'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'kyazdani42/nvim-web-devicons'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

Plug 'AndrewRadev/tagalong.vim'

Plug 'gcmt/taboo.vim'
Plug 'kshenoy/vim-signature'

Plug 'mbbill/undotree'

call plug#end()


" ####################
" # TOKYONIGHT THEME #
" ####################

set background=dark
colorscheme tokyonight


" #############
" # LIGHTLINE #
" #############

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


" ############
" # DASBOARD #
" ############

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


" ##########
" # WILDER #
" ##########

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


" #############
" # NVIM-TREE #
" #############

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


" ###################
" # NVIM-TREESITTER #
" ###################

lua << EOF
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true
	}
}
EOF


" #############
" # TELESCOPE #
" #############

nnoremap <leader>ff <cmd>Telescope find_files find_command=rg,--hidden,--files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>fs <cmd>Telescope live_grep<cr>
nnoremap <leader>fd <cmd>Telescope find_files find_command=rg,--hidden,--files cwd=~/Flo<cr>
nnoremap <leader>fr <cmd>Telescope lsp_references<cr>

lua << EOF
require('telescope').setup {
	defaults = {
		prompt_prefix = "🔍 "
	}
}

require('telescope').load_extension('fzf')
EOF


" ###########
" # HARPOON #
" ###########

nnoremap <leader>af :lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>aa :lua require("harpoon.ui").toggle_quick_menu()<cr>


" #############
" # LSPCONFIG #
" #############

lua << EOF
-- Add border to 'hover'
local lsp = vim.lsp
lsp.handlers["textDocument/hover"] = lsp.with(vim.lsp.handlers.hover, {
	border = "rounded"
})

require'lspconfig'.tsserver.setup{}
require'lspconfig'.graphql.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.html.setup{}
EOF

nnoremap <leader>df :lua vim.lsp.buf.definition()<cr>
nnoremap K :lua vim.lsp.buf.hover()<cr>


" ############
" # NVIM-CMP #
" ############

lua << EOF
-- To make Tab working.
local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

-- Start configuration
local cmp = require'cmp'

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif vim.fn["vsnip#available"](1) == 1 then
				feedkey("<Plug>(vsnip-expand-or-jump)", "")
			elseif has_words_before() then
				cmp.complete()
			else
				fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item()
			elseif vim.fn["vsnip#jumpable"](-1) == 1 then
				feedkey("<Plug>(vsnip-jump-prev)", "")
			end
		end, { "i", "s" })
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' } -- For vsnip users.
	}, {
		{ name = 'buffer' }
	}),
	enabled = function()
		-- disable completion in comments
		local context = require 'cmp.config.context'
		-- keep command mode completion enabled when cursor is in a comment
		if vim.api.nvim_get_mode().mode == 'c' then
			return true
		else
			return not context.in_treesitter_capture("comment")
			and not context.in_syntax_group("Comment")
		end
	end
})

-- Setup lspconfig.
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = { 'tsserver', 'graphql', 'cssls', 'html' }

for _, server in ipairs(servers) do
	lspconfig[server].setup {
		capabilities = capabilities
	}
end
EOF


" ############
" # UNDOTREE #
" ############

nnoremap <leader>u :UndotreeToggle<CR>

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


" ################
" # VIM-FUGITIVE #
" ################

nmap <leader>gs :G<CR>


" ##############
" # VIM-DADBOD #
" ##############

" First, launch mongoDB in terminal w/ alias 'ms' or sudo systemctl start mongod
" Connect to mongoDB: :DB mongodb+srv://<user>:<password>@flo.j1cmj.mongodb.net/<dbName>?retryWrites=true&w=majority


" #################
" # VIM-DADBOD-UI #
" #################

nnoremap <leader>mo :DBUIToggle<cr>
let g:db_ui_table_helpers = {
\   'mongodb+srv': {
	\     'List': '{table}.find()'
\   }
\ }
let g:db_ui_auto_execute_table_helpers = 1
let g:db_ui_save_location = '~/Flo/Dotfiles/nvim/.vim/db'
let g:db_ui_win_position = 'right'


" ####################
" # CUSTOM FUNCTIONS #
" ####################

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
