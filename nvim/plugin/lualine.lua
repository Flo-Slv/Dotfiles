require'lualine'.setup({
	options = {
		theme = 'nord', -- nightfly, nord, grubbox_dark, material, tokyionight
	},
	sections = {
		lualine_a =  { 'mode' },
		lualine_b = { 'branch' },
		lualine_c = { 'filename' },
		lualine_x = { '' },
		lualine_y = { 'filetype' },
		lualine_z = { 'progress' }
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {}
	},
	extensions = { 'nvim-tree', 'fugitive' }
})
