-- Not working...
-- if vim.g.snippets ~= 'luasnip' then
-- 	return
-- end

require'luasnip.loaders.from_vscode'.lazy_load({ paths = { './lua/globals/snippets.lua' } })

local ls = require'luasnip'
local types = require'luasnip.util.types'

ls.config.set_config {
	history = true,
	updateevents = 'TextChanged,TextChangedI',
	enable_autosnippets = true, -- ??
	-- ext_opts = {
	-- 	[type.choiceNode] = {
	-- 		active = {
	-- 			virt_text = { { '<-', 'Error' }}
	-- 		}
	-- 	}
	-- }
}
