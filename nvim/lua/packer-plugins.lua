-- At first install.
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
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

-- PackerSync every time we save packer-plugins.lua
local buf_name = vim.api.nvim_buf_get_name(0)

if buf_name == '/home/floslv/Flo/Dotfiles/nvim/lua/packer-plugins.lua' then
	local group = vim.api.nvim_create_augroup('packer_reload', { clear = true })
	vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
		command = 'source packer-plugins.lua | PackerSync',
		group = group,
		buffer = 0
	})
end


-- Plugins
return require'packer'.startup({
	function(use)
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'

		-- Colorscheme
		use 'folke/tokyonight.nvim'

		-- Display
		use 'itchyny/lightline.vim'
		use 'glepnir/dashboard-nvim'
		use 'kyazdani42/nvim-web-devicons'
		use {
			'kyazdani42/nvim-tree.lua',
			requires = {
				'kyazdani42/nvim-web-devicons',
			},
			tag = 'nightly'
		}
		use 'gelguy/wilder.nvim'

		-- Telescope
		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.0',
			requires = { {'nvim-lua/plenary.nvim'} }
		}
		use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

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

		-- LSP
		use 'neovim/nvim-lspconfig'

		-- Nvim-cmp
		use 'hrsh7th/nvim-cmp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-cmdline'
		use 'hrsh7th/cmp-nvim-lsp'
		use 'hrsh7th/cmp-nvim-lua'
		use 'onsails/lspkind.nvim'

		-- Databases
		use 'tpope/vim-dadbod'
		use 'kristijanhusak/vim-dadbod-ui'

		-- Commentaries
		use 'numToStr/Comment.nvim'

		-- GIT
		use 'mbbill/undotree'
		use 'rhysd/committia.vim'

		-- Others
		use 'tpope/vim-fugitive'
		use 'tpope/vim-surround'
		use 'windwp/nvim-autopairs'
		use 'AndrewRadev/tagalong.vim'

		use 'gcmt/taboo.vim'
		use 'kshenoy/vim-signature'
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
