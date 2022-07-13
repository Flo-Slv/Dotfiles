-- ##########
-- # REMAPS #
-- ##########


local key = vim.api.nvim_set_keymap
local options = { noremap = true }


-- Set leader key as a space.
vim.g.mapleader = ' '


-- TABS
key('n', 'H', 'gT', options)
key('n', 'L', 'gt', options)


-- COPY FROM CURSOR TO END OF LINE
key('n', 'Y', 'y$', options)


-- KEEPING IN CENTERED
key('n', 'n', 'nzzzv', options)
key('n', 'N', 'Nzzzv', options)


-- NAVIGATE EASILY BETWEEN WINDOWS
key('n', '<leader>h', ':wincmd h<CR>', options)
key('n', '<leader>j', ':wincmd j<CR>', options)
key('n', '<leader>k', ':wincmd k<CR>', options)
key('n', '<leader>l', ':wincmd l<CR>', options)


-- UNDO BREAK POINTS
key('i', ',', ',<C-g>u', {})
key('i', ';', ';<C-g>u', {})
key('i', '.', '.<C-g>u', {})
key('i', '!', '!<C-g>u', {})
key('i', '?', '?<C-g>u', {})


-- MOVING TEXT
key('v', 'J', ":move '>+1<CR>gv=gv", {}) 
key('v', 'K', ":move '<-2<CR>gv=gv", {}) 
key('i', '<C-j>', '<esc><:move .+1<CR>==', {}) 
key('i', '<C-k>', '<esc>:move .-2<CR>==', {}) 
key('n', '<C-j>', ':move .+1<CR>==', options) 
key('n', '<C-k>', ':move .-2<CR>==', options) 
