options = { noremap = true }

vim.keymap.set('n', '<leader>af', ":lua require'harpoon.mark'.add_file()<CR>", options)
vim.keymap.set('n', '<leader>aa', ":lua require'harpoon.ui'.toggle_quick_menu()<CR>", options)
