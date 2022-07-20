local db = require'dashboard'

db.custom_header = {
  '     ████               ████       ',
  '    ███                   ███      ',
  '   ███                     ███     ',
  '  ███                       ███    ',
  ' ███                         ███   ',
  '████                         ████  ',
  '████                         ████  ',
  '██████       ███████       ██████  ',
  '█████████████████████████████████  ',
  ' ███████████████████████████████   ',
  '  ████ ███████████████████ ████    ',
  '       ███▀███████████▀███         ',
  '      ████──▀███████▀──████        ',
  '      █████───█████───█████        ',
  '       ███████████████████         ',
  '        █████████████████          ',
  '         ███████████████           ',
  '          █████████████            ',
  '           ███████████             ',
  '          ███─NEOVIM─██            ',
  '          ███─██████─██            ',
  '           ███─████─██             ',
  '            █████████              ',
 ' ',
 ' ',
 ' '
}

local builtin = require'telescope.builtin'
local themes = require'telescope.themes'

db.custom_center = {
	{
		icon = '🔍',
		desc = '   Find file',
		action = function()
			builtin.find_files({
				cwd = vim.fn.substitute(vim.fn.getcwd(), '/home/floslv', '~', ''),
				prompt_title = '☀️ ' .. vim.fn.substitute(vim.fn.getcwd(), '/home/floslv', '~', '') .. ' ☀️',
				hidden = true
			})
		end
	},
	{
		icon = '💻',
		desc = '      Dev   ',
		action = function()
			builtin.find_files({
				cwd = '~/Flo/Dev',
				prompt_title = '💻 Dev',
				hidden = true
			})
		end
	},
	{
		icon = '🔅',
		desc = '    Dotfiles',
		action = function()
			builtin.git_files(themes.get_dropdown({
				cwd = '~/Flo/Dotfiles',
				prompt_title = ' Dotfiles',
				hidden = true,
				previewer = false
			}))
		end
	},
	{
		icon = '📝',
		desc = '    New file',
		action = 'DashboardNewFile'
	},
	{
		icon = '👀',
		desc = '    Key maps',
		action = function()
			builtin.keymaps(themes.get_ivy({
				prompt_title = '👀 Key maps'
			}))
		end
	},
	{
		icon = '❓',
		desc = '     Help   ',
		action = function()
			builtin.help_tags({
				prompt_title = '❓ Help'
			})
		end
	}
}

local plugins_count = vim.fn.len(vim.fn.globpath(
	'~/.local/share/nvim/site/pack/packer/start', '*', 0, 1
))

db.custom_footer = {
	' ',
	' ',
	'Bienvenue Flo !',
	' ',
	os.date("%A %d/%m/%Y %H:%M"),
	' ',
	'Neovim plugins: ' .. plugins_count
}
