local cmp = require'cmp'
local lspkind = require'lspkind'
local luasnip = require 'luasnip'

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<C-j>'] = cmp.mapping.select_next_item(),
		['<C-p'] = cmp.mapping.select_prev_item(),
		['<CR>'] = cmp.mapping.confirm({ select = true })
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp', keyword_length = 3 },
		{ name = 'nvim_lua' },
		{ name = 'path' },
		{ name = 'luasnip' }
	}, {
		{ name = 'buffer', keyword_length = 3 }
	}),
	formatting = {
		format = lspkind.cmp_format {
			with_text = true,
			menu = {
				buffer = '[BUF]',
				nvim_lsp = '[LSP]',
				nvim_lua = '[LUA]',
				path = '[PATH]',
				luasnip = '[SNIP]'
			}
		}
	},
	enabled = function()
		-- disable completion in comments
		local context = require'cmp.config.context'
		-- keep command mode completion enabled when cursor is in a comment
		if vim.api.nvim_get_mode().mode == 'c' then
			return true
		else
			return not context.in_treesitter_capture('comment')
			and not context.in_syntax_group('Comment')
		end
	end
})

-- Setup lspconfig.
local lspconfig = require'lspconfig'
local capabilities = require'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = { 'tsserver', 'graphql', 'cssls', 'html', 'sumneko_lua', 'jsonls' }

for _, server in ipairs(servers) do
	lspconfig[server].setup {
		capabilities = capabilities
	}
end

-- If I want to set up manually instead of using nvim-lsp-installer
--local sumneko_root_path = os.getenv('HOME') .. '/lua-language-server'
--local sumneko_binary = sumneko_root_path .. '/bin/lua-language-server'

--[[lspconfig.sumneko_lua.setup {
	cmd = {
		sumneko_binary, '-E', sumneko_root_path .. '/main.lua'
	},
	capabilities = capabilities
}]]
