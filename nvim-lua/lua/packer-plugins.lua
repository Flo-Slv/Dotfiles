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
	end,
	config = {
    		git = {
      			default_url_format = 'git@github.com:%s'
    		}
  	}
})
