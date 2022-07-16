-- if vim.g.snippets ~= 'luasnip' then
-- 	return
-- end

-- require("luasnip.loaders.from_vscode").lazy_load()
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


-- Keymaps
vim.keymap.set(
	{ 'i', 's' },
	'<C-j>',
	function ()
		if ls.expand_or_jump() then
			ls.expand_or_jump()
		end
	end,
	{ noremap = true, silent = true }
)

vim.keymap.set(
	{ 'i', 's' },
	'<C-k>',
	function ()
		if ls.jumpable(-1) then
			ls.jump(-1)
		end
	end,
	{ noremap = true, silent = true }
)

vim.keymap.set({ 'i' }, '<M-l>', function ()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end)


-- Reload luasnip.lua
vim.keymap.set('n', '<leader>s', ':source ~/Flo/Dotfiles/nvim/plugin/luasnip.lua<CR>', { noremap = true })

-- Snippets
-- ls.snippets = {
-- 	all = {
--
-- 	},
-- 	lua = {
--
-- 	}
-- }
