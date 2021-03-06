local vim = vim
local fn = vim.fn

-- At first install.
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		'git',
		'clone',
		'--depth',
		'1',
		'git@github.com/wbthomason/packer.nvim',
		install_path
	})
end

-- PackerSync every time we save packer.lua
-- local buf_name = vim.api.nvim_buf_get_name(0)
-- local path = {
-- 	'/home/floslv/Flo/Dotfiles/nvim/lua/packer-plugins.lua',
-- 	'~/Flo/Dotfiles/nvim/lua/packer-plugins.lua'
-- }
--
-- if vim.tbl_contains(path, buf_name) then
-- 	local group = vim.api.nvim_create_augroup('packer_reload', { clear = true })
-- 	-- vim.api.nvim_clear_autocmds({ group = 'packer_reload', buffer = 0 })
-- 	vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
-- 		command = 'source % | PackerSync',
-- 		group = group,
-- 		buffer = 0
-- 	})
-- end

-- Using vimscript bc Lua script above doesn't work when opening w/ Telescope. 
vim.cmd [[
	augroup packer_reload
		autocmd!
		autocmd BufWritePost packer.lua source <afile> | PackerSync
	augroup end
]]

-- Plugins
return require'packer'.startup({
	function(use)
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'

		-- Colorscheme
		use 'folke/tokyonight.nvim'

		-- Display
		use 'nvim-lualine/lualine.nvim'
		use 'glepnir/dashboard-nvim'
		use 'kyazdani42/nvim-web-devicons'
		use {
			'kyazdani42/nvim-tree.lua',
			requires = { 'kyazdani42/nvim-web-devicons' },
			tag = 'nightly'
		}
		use 'gelguy/wilder.nvim'
		use 'TaDaa/vimade'

		-- Telescope
		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.0',
			requires = { { 'nvim-lua/plenary.nvim' } }
		}
		use {
			'nvim-telescope/telescope-fzf-native.nvim',
			run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
		}

		use 'xiyaowong/telescope-emoji.nvim'
		use 'AckslD/nvim-neoclip.lua'
		use 'benfowler/telescope-luasnip.nvim'

		-- Harpoon
		use 'ThePrimeagen/harpoon'

		-- Nvim-treesitter
	    use {
			'nvim-treesitter/nvim-treesitter',
			run = function() require('nvim-treesitter.install').update({
				with_sync = true
			}) end
		}
		use 'p00f/nvim-ts-rainbow'

		-- LSP
		use 'neovim/nvim-lspconfig'
		use 'williamboman/nvim-lsp-installer'
		use 'RRethy/vim-illuminate'

		-- Nvim-cmp
		use 'hrsh7th/nvim-cmp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-cmdline'
		use 'hrsh7th/cmp-nvim-lua'
		use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
		use 'onsails/lspkind.nvim'
		use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
		use 'L3MON4D3/LuaSnip' -- Snippets plugin

		-- Databases
		use 'tpope/vim-dadbod'
		use 'kristijanhusak/vim-dadbod-ui'

		-- Commentaries
		use 'numToStr/Comment.nvim'

		-- Notifications
		use 'rcarriga/nvim-notify'

		-- GIT
		use 'tpope/vim-fugitive'
		use 'mbbill/undotree'
		use 'lewis6991/gitsigns.nvim'

		-- Markdown
		use 'ellisonleao/glow.nvim'

		-- Others
		use 'tpope/vim-surround'
		use 'windwp/nvim-autopairs'
		use 'AndrewRadev/tagalong.vim'

		use 'gcmt/taboo.vim'
		use 'kshenoy/vim-signature'

		use 'christoomey/vim-tmux-navigator'

		use 'norcalli/nvim-colorizer.lua'
	end,
	config = {
   		git = {
			default_url_format = 'git@github.com:%s'
		},
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}
})
