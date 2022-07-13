require'nvim-autopairs'.setup {}

--[[ local npairs = require'nvim-autopairs'
local Rule = require'nvim-autopairs.rule'

npairs.add_rules {
	Rule('%(?.*%)?%s*%=>$', ' { }', { 'typescript', 'typescriptreact', 'javascript' })
	:use_regex(true)
	:set_end_pair_length(2)
} ]]
