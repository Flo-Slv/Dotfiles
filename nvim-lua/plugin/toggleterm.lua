require'toggleterm'.setup{
	direction = 'horizontal',
	open_mapping = [[<leader>tt]]
}

vim.api.nvim_set_keymap('n', 'tui', ":TermExec cmd='ui' dir='%:p:h' direction='float'<CR>", { noremap = true })
