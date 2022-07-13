require'telescope'.setup {
	defaults = {
		prompt_prefix = '🔍 ',
		hidden = true
	},
	extensions = {
		emoji = {
			action = function(emoji)
				vim.fn.setreg("*", emoji.value)
				print([[Press p or "*p to paste this emoji]] .. emoji.value)

				-- insert emoji when picked
				vim.api.nvim_put({ emoji.value }, 'c', false, true)
			end
		}
	}
}

require'telescope'.load_extension'fzf'
require'telescope'.load_extension'emoji'
require'telescope'.load_extension'luasnip'
require'telescope'.load_extension'neoclip'
require'neoclip'.setup()

local options = { noremap = true }
local key = vim.api.nvim_set_keymap

key('n', '<leader>ff', ':lua currentDir()<CR>', options)
key('n', '<leader>flo', ':lua dev()<CR>', options)
key('n', '<leader>dev', ':lua dev()<CR>', options)
key('n', '<leader>dot', ':lua dotfiles()<CR>', options)
key('n', '<leader>he', ':lua help()<CR>', options)
key('n', '<leader>key', ':lua keymaps()<CR>', options)
key('n', '<leader>fb', ':Telescope buffers<CR>', options)
key('n', '<leader>fg', ':Telescope git_files<CR>', options)
key('n', '<leader>fs', ':Telescope live_grep<CR>', options)
key('n', '<leader>fl', ':Telescope lsp_references<CR>', options)
key('n', '<leader>emo', ':Telescope emoji<CR>', options)
key('n', '<leader>fc', ':Telescope neoclip<CR>', options)

local builtin = require'telescope.builtin'
local themes = require'telescope.themes'

function currentDir()
	builtin.find_files {
		prompt_title = '☀️ ' .. vim.fn.substitute(vim.fn.getcwd(), '/home/floslv', '~', '') .. ' ☀️',
		cwd = vim.fn.substitute(vim.fn.getcwd(), '/home/floslv', '~', ''),
		hidden = true
	}
end

function flo()
	builtin.find_files {
		cwd = '~/Flo',
		prompt_title = '🏠 ~/Flo',
		hidden = true
	}
end

function dev()
	builtin.find_files {
		cwd = '~/Flo/Dev',
		prompt_title = '💻 Dev',
		hidden = true
	}
end

function dotfiles()
	builtin.git_files(themes.get_dropdown {
		cwd = '~/Flo/Dotfiles',
		prompt_title = '⚙️ Dotfiles',
		hidden = true,
		previewer = false
	})
end

function help()
	builtin.help_tags {
		prompt_title = "ℹ️ Help"
	}
end

function keymaps()
	builtin.keymaps(themes.get_ivy {
		prompt_title = '👀 Key maps'
	})
end
