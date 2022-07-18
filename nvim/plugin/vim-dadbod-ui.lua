-- First, launch mongoDB in terminal w/ alias 'ms' or sudo systemctl start mongod
-- Connect to mongoDB: :DB mongodb+srv://<user>:<password>@flo.j1cmj.mongodb.net/<dbName>?retryWrites=true&w=majority

vim.keymap.set('n', '<leader>mo', ':tabnew | :DBUIToggle<CR>', { noremap = true })

vim.cmd [[
	let g:db_ui_table_helpers = {
	\	'mongodb+srv': {
	\		'List': '{table}.find()'
	\	}
	\}
]]

-- Remap 'H' to 'u', to display DB infos.
vim.cmd [[
autocmd FileType dbui nmap <buffer> u <Plug>(DBUI_ToggleDetails)
autocmd FileType dbui nmap <buffer> <CR> <Plug>(DBUI_SelectLine)
autocmd FileType dbui nmap <buffer> d <Plug>(DBUI_DeleteLine)
autocmd FileType dbui nmap <buffer> R <Plug>(DBUI_Redraw)
autocmd FileType dbui nmap <buffer> A <Plug>(DBUI_AddConnection)
autocmd FileType dbui nmap <buffer> S <Plug>(DBUI_SelectLineVSplit)
]]

vim.g.db_ui_disable_mappings = 1
vim.g.db_ui_auto_execute_table_helpers = 1
vim.g.db_ui_save_location = '~/Flo/Dotfiles/nvim/lua/db'
vim.g.db_ui_win_position = 'right'
vim.g.db_ui_winwidth = 30
