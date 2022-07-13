options = { noremap = true }

vim.api.nvim_set_keymap('n', '<leader>af', ":lua require'harpoon.mark'.add_file()<CR>", options)
vim.api.nvim_set_keymap('n', '<leader>aa', ":lua require'harpoon.ui'.toggle_quick_menu()<CR>", options)
