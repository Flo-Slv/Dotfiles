require'nvim-tree'.setup({
	sort_by = 'case_sensitive',
	view = {
		adaptive_size = true,
		-- width = 30
	},
	renderer = {
		group_empty = true
	},
	filters = {
		dotfiles = false
	}
})

-- Autocmd to quit NvimTree when last windows close.
vim.api.nvim_create_autocmd('BufEnter', {
	command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
	nested = true
})
