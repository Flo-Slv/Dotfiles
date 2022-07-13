vim.cmd [[ colorscheme tokyonight ]]

vim.g.lightline = {
	colorscheme = 'PaperColor',
	active = {
		left = {
			{ 'mode', 'paste' },
			{ 'gitbranch', 'readonly', 'filename', 'modified' }
		},
		right = {
			{ 'percent' },
			{ 'filetype' }
		}
	},
	component_function = {
		gitbranch = 'FugitiveHead'
	}
}
