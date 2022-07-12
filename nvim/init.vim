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
set noshowmode
set laststatus=3
highlight WinSeparator guibg=None

function! Path() abort
	return expand('%:~:.')
endfunction
set winbar=%=%m\ %{Path()}

" SAVING
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

" SAVE AND SOURCE
nnoremap <leader>so :w \| :so %<CR>

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

Plug 'xiyaowong/telescope-emoji.nvim'
Plug 'AckslD/nvim-neoclip.lua'
Plug 'benfowler/telescope-luasnip.nvim'

Plug 'ThePrimeagen/harpoon'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'onsails/lspkind.nvim'

Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'kyazdani42/nvim-web-devicons'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'windwp/nvim-autopairs'

Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

Plug 'numToStr/Comment.nvim'

Plug 'AndrewRadev/tagalong.vim'

Plug 'gcmt/taboo.vim'
Plug 'kshenoy/vim-signature'

Plug 'mbbill/undotree'
Plug 'rhysd/committia.vim'

Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}

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
	\'colorscheme': 'PaperColor',
	\'active': {
		\'left': [
			\[ 'mode', 'paste' ],
			\[ 'gitbranch', 'readonly', 'filename', 'modified' ]
		\],
		\'right': [
			\['percent'],
			\['filetype']
		\]
	\},
	\'component_function': {
		\'gitbranch': 'FugitiveHead'
	\}
\}


" ############
" # DASBOARD #
" ############

lua << EOF
local db = require'dashboard'
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

local builtin = require'telescope.builtin'
local themes = require'telescope.themes'

db.custom_center = {
	{
		icon = '🔍',
		desc = '   Find file',
		action = function()
			builtin.find_files({
				cwd = vim.fn.substitute(vim.fn.getcwd(), '/home/floslv', '~', ''),
				prompt_title = '☀️ ' .. vim.fn.substitute(vim.fn.getcwd(), '/home/floslv', '~', '') .. ' ☀️',
				hidden = true
			})
		end
	},
	{
		icon = '💻',
		desc = '      Dev   ',
		action = function()
			builtin.find_files({
				cwd = '~/Flo/Dev',
				prompt_title = '💻 Dev',
				hidden = true
			})
		end
	},
	{
		icon = '⭐',
		desc = '    Dotfiles',
		action = function()
			builtin.git_files(themes.get_dropdown({
				cwd = '~/Flo/Dotfiles',
				prompt_title = '⚙️ Dotfiles',
				hidden = true,
				previewer = false
			}))
		end
	},
	{
		icon = '⚡',
		desc = '    New file',
		action = 'DashboardNewFile'
	},
	{
		icon = '👀',
		desc = '    Key maps',
		action = function()
			builtin.keymaps(themes.get_ivy({
				prompt_title = '👀 Key maps'
			}))
		end
	},
	{
		icon = '❓',
		desc = '     Help   ',
		action = function()
			builtin.help_tags({
				prompt_title = 'ℹ️ Help'
			})
		end
	}
}

db.custom_footer = {
	' ',
	' ',
	'Bienvenue Flo !',
	' ',
	os.date("%A %d/%m/%Y %H:%M")
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
require'nvim-tree'.setup({
	sort_by = 'case_sensitive',
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = 'u', action = 'dir_up' }
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

nnoremap <C-a> :NvimTreeToggle<CR>
nnoremap <C-f> :NvimTreeFindFile<CR>


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

nnoremap <leader>ff <cmd>lua currentDir()<CR>
nnoremap <leader>flo <cmd>lua flo()<CR>
nnoremap <leader>dev <cmd>lua dev()<CR>
nnoremap <leader>dot <cmd>lua dotfiles()<CR>
nnoremap <leader>help <cmd>lua help()<CR>
nnoremap <leader>key <cmd>lua keymaps()<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fg <cmd>Telescope git_files<CR>
nnoremap <leader>fs <cmd>Telescope live_grep<CR>
nnoremap <leader>fl <cmd>Telescope lsp_references<CR>
nnoremap <leader>emo <cmd>Telescope emoji<CR>
nnoremap <leader>fc <cmd>Telescope neoclip<CR>

lua << EOF
require'telescope'.setup {
	defaults = {
		prompt_prefix = '🔍 ',
		hidden = true
	},
	extensions = {
		emoji = {
			action = function(emoji)
				vim.fn.setreg("*", emoji.value)
				print([[Press p or "*p to paste this emoji]] .. emoji.value)

				-- insert emoji when picked
				vim.api.nvim_put({ emoji.value }, 'c', false, true)
			end
		}
	}
}
require'telescope'.load_extension'fzf'
require'telescope'.load_extension'emoji'
require'telescope'.load_extension'luasnip'
require'telescope'.load_extension'neoclip'
require'neoclip'.setup()

local builtin = require'telescope.builtin'
local themes = require'telescope.themes'

function currentDir()
	builtin.find_files {
		prompt_title = '☀️ ' .. vim.fn.substitute(vim.fn.getcwd(), '/home/floslv', '~', '') .. ' ☀️',
		cwd = vim.fn.substitute(vim.fn.getcwd(), '/home/floslv', '~', ''),
		hidden = true
	}
end

function flo()
	builtin.find_files {
		cwd = '~/Flo',
		prompt_title = '🏠 ~/Flo',
		hidden = true
	}
end

function dev()
	builtin.find_files {
		cwd = '~/Flo/Dev',
		prompt_title = '💻 Dev',
		hidden = true
	}
end

function dotfiles()
	builtin.git_files(themes.get_dropdown {
		cwd = '~/Flo/Dotfiles',
		prompt_title = '⚙️ Dotfiles',
		hidden = true,
		previewer = false
	})
end

function help()
	builtin.help_tags {
		prompt_title = "ℹ️ Help"
	}
end

function keymaps()
	builtin.keymaps(themes.get_ivy {
		prompt_title = '👀 Key maps'
	})
end
EOF


" ###########
" # HARPOON #
" ###########

nnoremap <leader>af :lua require'harpoon.mark'.add_file()<CR>
nnoremap <leader>aa :lua require'harpoon.ui'.toggle_quick_menu()<CR>


" #############
" # LSPCONFIG #
" #############

lua << EOF
require'lspconfig'.tsserver.setup {}
require'lspconfig'.graphql.setup {}
require'lspconfig'.cssls.setup {}
require'lspconfig'.html.setup {}
--[[ require'lspconfig'.sumneko_lua.setup {
	settings = {
		Lua = {
			runtime = { version = 'LuaJIT' },
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {'vim'}
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file('', true)
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = { enable = false }
		}
	}
} ]]

-- Add border to 'hover'
local lsp = vim.lsp
lsp.handlers['textDocument/hover'] = lsp.with(vim.lsp.handlers.hover, {
	border = 'rounded'
	})
EOF

nnoremap <leader>df :lua vim.lsp.buf.definition()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>


" ############
" # NVIM-CMP #
" ############

lua << EOF
local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup({
	snippet = {
		expand = function(args)
			require'luasnip'.lsp_expand(args.body)
		end
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<C-i>'] = cmp.mapping.select_next_item(),
		['<C-p'] = cmp.mapping.select_prev_item(),
		['<CR>'] = cmp.mapping.confirm({ select = true })
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lua' },
		{ name = 'nvim_lsp', keyword_length=3 },
		{ name = 'path' },
		{ name = 'luasnip' }
	}, {
		{ name = 'buffer', keyword_length=3 }
	}),
	formatting = {
		format = lspkind.cmp_format {
			with_text = true,
			menu = {
				buffer = '[BUF]',
				nvim_lsp = '[LSP]',
				nvim_lua = '[api]',
				path = '[PATH]',
				luasnip = '[SNIP]'
			}
		}
	},
	enabled = function()
		-- disable completion in comments
		local context = require'cmp.config.context'
		-- keep command mode completion enabled when cursor is in a comment
		if vim.api.nvim_get_mode().mode == 'c' then
			return true
		else
			return not context.in_treesitter_capture('comment')
			and not context.in_syntax_group('Comment')
		end
	end
})

-- Setup lspconfig.
local lspconfig = require'lspconfig'
local capabilities = require'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = { 'tsserver', 'graphql', 'cssls', 'html' }

for _, server in ipairs(servers) do
	lspconfig[server].setup {
		capabilities = capabilities
	}
end

--[[ local sumneko_root_path = os.getenv('HOME') .. '/lua-language-server'
local sumneko_binary = sumneko_root_path .. '/bin/lua-language-server'

lspconfig.sumneko_lua.setup {
	cmd = {
		sumneko_binary, '-E', sumneko_root_path .. '/main.lua'
	},
	capabilities = capabilities
} ]]
EOF


" ###########
" # LUASNIP #
" ###########

lua << EOF
require'luasnip.loaders.from_vscode'.lazy_load()
require'luasnip.loaders.from_vscode'.lazy_load({ paths = { './snippets' } })
local ls = require'luasnip'

ls.config.set_config {
	history = true,
	updateevents = 'TextChanged,TextChangedI'
}

vim.keymap.set('n', '<leader><leader>s', '<cmd>source ~/Flo/Dotfiles/nvim/.vim/snippets/flo-snip.lua<CR>')
EOF

imap <silent><expr> <C-y> luasnip#expand_or_jumpable() ? '<Plug>luasnip-jump-next' : '<C-y>'
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<CR>

snoremap <silent> <C-y> <cmd>lua require('luasnip').jump(1)<CR>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<CR>


" ############
" # UNDOTREE #
" ############

nnoremap <leader>u :UndotreeToggle<CR>

if has('persistent_undo')
	let target_path = expand('~/Flo/Dotfiles/nvim/undodir')

	" If the location does not exist,
	" create the directory and any parent directories.
	if !isdirectory(target_path)
		call mkdir(target_path, 'p', 0700)
	endif

	let &undodir=target_path
	set undofile
endif


" ################
" # VIM-FUGITIVE #
" ################

nmap <leader>gs :G<CR>


" ##################
" # NVIM-AUTOPAIRS #
" ##################
lua << EOF
require'nvim-autopairs'.setup {}

--[[ local npairs = require'nvim-autopairs'
local Rule = require'nvim-autopairs.rule'

npairs.add_rules {
	Rule('%(?.*%)?%s*%=>$', ' { }', { 'typescript', 'typescriptreact', 'javascript' })
	:use_regex(true)
	:set_end_pair_length(2)
} ]]
EOF


" ###########
" # COMMENT #
" ###########

lua << EOF
require'Comment'.setup()
EOF


" ##############
" # VIM-DADBOD #
" ##############

" First, launch mongoDB in terminal w/ alias 'ms' or sudo systemctl start mongod
" Connect to mongoDB: :DB mongodb+srv://<user>:<password>@flo.j1cmj.mongodb.net/<dbName>?retryWrites=true&w=majority


" #################
" # VIM-DADBOD-UI #
" #################

nnoremap <leader>mo :DBUIToggle<CR>
let g:db_ui_table_helpers = {
\   'mongodb+srv': {
	\     'List': '{table}.find()'
\   }
\ }
let g:db_ui_auto_execute_table_helpers = 1
let g:db_ui_save_location = '~/Flo/Dotfiles/nvim/.vim/db'
let g:db_ui_win_position = 'right'


" ##############
" # TOGGLETERM #
" ##############

lua << EOF
require'toggleterm'.setup{
	direction = 'horizontal',
	open_mapping = [[<leader>tt]]
}
EOF

nnoremap <leader>tui :TermExec cmd='ui' dir='%:p:h' direction='float'<CR>


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
