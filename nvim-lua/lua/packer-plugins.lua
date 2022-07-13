return require'packer'.startup({
	function(use)
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'

		-- Colorscheme
		use 'folke/tokyonight.nvim'

		-- Display
		use 'itchyny/lightline.vim'
		use 'glepnir/dashboard-nvim'
		use 'kyazdani42/nvim-tree.lua'
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
	end,
	config = {
    		git = {
				default_url_format = 'git@github.com:%s'
			}
	}
})
