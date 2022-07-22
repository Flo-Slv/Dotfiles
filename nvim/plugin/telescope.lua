require'telescope'.setup {
	defaults = {
		prompt_prefix = '🔍 ',
		hidden = true
	},
	extensions = {
		emoji = {
			action = function(emoji)
				vim.fn.setreg("*", emoji.value)
				print([[ Press p or "*p to paste this emoji ]] .. emoji.value)

				-- insert emoji when picked
				vim.api.nvim_put({ emoji.value }, 'c', false, true)
			end
		}
	}
}

require'telescope'.load_extension'fzf'
require'telescope'.load_extension'emoji'
require'telescope'.load_extension'luasnip'
require'telescope'.load_extension'notify'
require'telescope'.load_extension'neoclip'
require'neoclip'.setup()


-- UI
vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg='#CCCCCC' })
vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg='#CCCCCC' })
vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { fg='#CCCCCC' })
vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { fg='#CCCCCC' })

-- vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg='#3B4252' })
-- vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg='#3B4252' })
-- vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { fg='#3B4252' })
-- vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { fg='#3B4252' })

vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg='#24283b' })
vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg='#24283b' })
vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg='#24283b' })

vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { fg='#ffffff' })
vim.api.nvim_set_hl(0, 'TelescopeResultsTitle', { fg='#ffffff' })
vim.api.nvim_set_hl(0, 'TelescopePreviewTitle', { fg='#ffffff' })
