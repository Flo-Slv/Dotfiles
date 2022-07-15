require'nvim-tree'.setup({
	sort_by = 'case_sensitive',
	view = {
		adaptive_size = false,
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

-- Create autocmd to quit NvimTree when last windows close.
-- There is an issue with auto_close options...
vim.api.nvim_create_autocmd('BufEnter', {
	command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
	nested = true
})
