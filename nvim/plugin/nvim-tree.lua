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

local options = { noremap = true }

vim.api.nvim_set_keymap('n', '<C-a>', ':NvimTreeToggle<CR>', options)
vim.api.nvim_set_keymap('n', '<C-f>', ':NvimTreeFindFile<CR>', options)
