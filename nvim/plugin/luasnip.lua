if vim.g.snippets ~= 'luasnip' then
	return
end

local ls = require'luasnip'
local types = require'luasnip.util.types'

ls.config.set.config {
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
