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
-- using vim-tmux-navigator
vim.g.tmux_navigator_no_mappings = true

key('n', '<M-h>', ':TmuxNavigateLeft<CR>', options)
key('n', '<M-j>', ':TmuxNavigateDown<CR>', options)
key('n', '<M-k>', ':TmuxNavigateUp<CR>', options)
key('n', '<M-l>', ':TmuxNavigateRight<CR>', options)


-- UNDO BREAK POINTS
key('i', ',', ',<C-g>u', {})
key('i', ';', ';<C-g>u', {})
key('i', '.', '.<C-g>u', {})
key('i', '!', '!<C-g>u', {})
key('i', '?', '?<C-g>u', {})


-- MOVING TEXT
key('v', 'J', ":move '>+1<CR>gv=gv", {})
key('v', 'K', ":move '<-2<CR>gv=gv", {})
key('n', '<C-j>', ':move .+1<CR>==', options)
key('n', '<C-k>', ':move .-2<CR>==', options)


-- VISUAL MODE INDENT
key('v', '<', '<gv', {})
key('v', '>', '>gv', {})


-- RESIZE WITH ARROWS
key('n', '<C-Up>', ':resize +2<CR>', options)
key('n', '<C-Down>', ':resize -2<CR>', options)
key('n', '<C-Left>', ':vertical resize -2<CR>', options)
key('n', '<C-Right>', ':vertical resize +2<CR>', options)
