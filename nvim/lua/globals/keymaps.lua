-- ##########
-- # REMAPS #
-- ##########


local key = vim.keymap.set
local full_options = { noremap = true, silent = true }
local noremap = { noremap = true }


-- Set leader key as a space.
vim.g.mapleader = ' '


-- TABS
key('n', 'H', 'gT', noremap)
key('n', 'L', 'gt', noremap)


-- COPY FROM CURSOR TO END OF LINE
key('n', 'Y', 'y$', noremap)


-- KEEPING IN CENTERED
key('n', 'n', 'nzzzv', noremap)
key('n', 'N', 'Nzzzv', noremap)


-- NAVIGATE EASILY BETWEEN WINDOWS
-- using vim-tmux-navigator
vim.g.tmux_navigator_no_mappings = true

key('n', '<M-h>', ':TmuxNavigateLeft<CR>', full_options)
key('n', '<M-j>', ':TmuxNavigateDown<CR>', full_options)
key('n', '<M-k>', ':TmuxNavigateUp<CR>', full_options)
key('n', '<M-l>', ':TmuxNavigateRight<CR>', full_options)


-- UNDO BREAK POINTS
key('i', ',', ',<C-g>u', {})
key('i', ';', ';<C-g>u', {})
key('i', '.', '.<C-g>u', {})
key('i', '!', '!<C-g>u', {})
key('i', '?', '?<C-g>u', {})


-- MOVING TEXT
key('v', 'J', ":move '>+1<CR>gv=gv", {})
key('v', 'K', ":move '<-2<CR>gv=gv", {})
key('n', '<C-j>', ':move .+1<CR>==', full_options)
key('n', '<C-k>', ':move .-2<CR>==', full_options)


-- VISUAL MODE INDENT
key('v', '<', '<gv', {})
key('v', '>', '>gv', {})


-- RESIZE WITH ARROWS
key('n', '<C-Up>', ':resize +2<CR>', full_options)
key('n', '<C-Down>', ':resize -2<CR>', full_options)
key('n', '<C-Left>', ':vertical resize -2<CR>', full_options)
key('n', '<C-Right>', ':vertical resize +2<CR>', full_options)
