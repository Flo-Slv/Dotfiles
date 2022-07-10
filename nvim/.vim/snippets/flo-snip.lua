local ls = require'luasnip'

ls.snippets = {
	all = {
		ls.parser.parse_snippet('expand', '-- This is result !')
	}
}
