require'lspconfig'.tsserver.setup {}
require'lspconfig'.graphql.setup {}
require'lspconfig'.cssls.setup {}
require'lspconfig'.html.setup {}
--[[ require'lspconfig'.sumneko_lua.setup {
	settings = {
		Lua = {
			runtime = { version = 'LuaJIT' },
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' }
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file('', true)
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = { enable = false }
		}
	}
} ]]

-- Add border to 'hover'
local lsp = vim.lsp
lsp.handlers['textDocument/hover'] = lsp.with(vim.lsp.handlers.hover, {
	border = 'rounded'
})

local key = vim.api.nvim_set_keymap

key('n', '<leader>df', ':lua vim.lsp.buf.definition()<CR>', { noremap = true })
key('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { noremap = true })

