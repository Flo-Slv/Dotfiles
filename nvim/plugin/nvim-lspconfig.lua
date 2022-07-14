require'nvim-lsp-installer'.setup {
	ui = {
		border = 'rounded',
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗"
		}
	}
}

require'lspconfig'.tsserver.setup {}
require'lspconfig'.graphql.setup {}
require'lspconfig'.cssls.setup {}
require'lspconfig'.html.setup {}

local schemas = require'globals.lsp.json-formats'
require'lspconfig'.jsonls.setup {
	settings = {
		-- TODO: find why not working !
		-- json = { schemas = schemas },
		-- setup = {
		-- 	commands = {
		-- 		Format = {
		-- 			function()
		-- 				vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line "$", 0 })
		-- 			end
		-- 		}
		-- 	}
		-- }
	}
}
require'lspconfig'.sumneko_lua.setup {
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
}


-- UI
local lsp = vim.lsp

lsp.handlers['textDocument/hover'] = lsp.with(vim.lsp.handlers.hover, {
	border = 'rounded'
})
lsp.handlers['textDocument/signatureHelp'] = lsp.with(vim.lsp.handlers.hover, {
	border = 'rounded'
})

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = true,
	severity_sort = true
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end


-- MAPPING
local key = vim.api.nvim_set_keymap

key('n', '<leader>df', ':lua vim.lsp.buf.definition()<CR>', { noremap = true })
key('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { noremap = true })

