-- ###########
-- # OPTIONS #
-- ###########


local vim = vim

local options = {
  -- DISPLAY
	title = true,
	number = true,
	relativenumber = true,
	wrap = true,
	scrolloff = 10,
	sidescrolloff = 10,
	mouse = 'a',
	cursorline = true,
	colorcolumn = '80',
	numberwidth = 4,
	textwidth = 80,
	shiftwidth = 4,
	tabstop = 4,
	softtabstop = 4,
	fileencoding = 'utf-8',
	signcolumn = 'yes',
	cmdheight = 2,
	showmode = false,
	splitbelow = true,
	splitright = true,
	smartindent = true,
	clipboard = 'unnamedplus',
	laststatus = 2, -- set to 3 for an unique lualine bar.
	termguicolors = true,
	-- SAVING
	backup = false,
	writebackup = false,
	swapfile = false,
	undodir = vim.fn.expand('~') .. '/Flo/Dotfiles/neovim/lua/FloSlv/undodir',
	undofile = true,
	undolevels = 500,
	-- SEARCH
	ignorecase = true,
	smartcase = true,
	-- COMPLETION
	wildignore = '*.o,*.r,*.so,*.sl',
	completeopt = { 'menu', 'menuone', 'noselect' }, -- need it for nvim_cmp
	-- REMOVE BEEP
	visualbell = true,
	errorbells = false
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

-- Window separator.
-- vim.api.nvim_set_hl(0, 'WinSeparator', { guibg = None })
