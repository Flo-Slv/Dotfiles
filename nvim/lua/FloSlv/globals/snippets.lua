local ls = require'luasnip'
local snip = ls.snippet
local func = ls.function_node

local date = function ()
	return { os.date('%d-%m-%Y') }
end

-- Snippets
ls.add_snippets(nil, {
	all = {
		snip(
			{
				trig = 'da',
				name = 'Date',
				dscr = 'Test de date'
			}, {
				func(date, {})
			}
		)
	}
})
