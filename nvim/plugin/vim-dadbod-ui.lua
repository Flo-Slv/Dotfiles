-- First, launch mongoDB in terminal w/ alias 'ms' or sudo systemctl start mongod
-- Connect to mongoDB: :DB mongodb+srv://<user>:<password>@flo.j1cmj.mongodb.net/<dbName>?retryWrites=true&w=majority

vim.api.nvim_set_keymap('n', '<leader>mo', ':DBUIToggle<CR>', { noremap = true })
