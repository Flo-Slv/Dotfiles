-- ###########
-- # OPTIONS #
-- ###########


local vim = vim

-- DISPLAY
local options = {
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
	undodir = vim.fn.expand('~') .. '/Flo/Dotfiles/nvim/lua/FloSlv/undodir',
	undofile = true,
	undolevels = 500,
	-- SEARCH
	ignorecase = true,
	smartcase = true,
	-- COMPLETION
	wildignore = '*.o,*.r,*.so,*.sl',
	completeopt = { 'menu', 'menuone', 'noselect' },
	-- REMOVE BEEP
	visualbell = true,
	errorbells = false
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

-- Set '|' for each tab indentation
vim.cmd [[ set list lcs=tab:\|\ ]]

-- TODO: find how to improve opacity between active and non active windows !
-- TODO: change signcolumn or foldcolumn
-- Opacity on non-active windows
-- vim.cmd [[ highlight ActiveWindows guibg=#24283b ]]
-- vim.cmd [[ highlight NonActiveWindows guibg=#2C3043 ]]
-- vim.cmd [[ highlight NonActiveWinbar guibg=#2C3043 ]]
-- vim.cmd [[ highlight NonActiveStatusLine guibg=#2C3043 ]]


-- vim.cmd [[
-- set winhighlight=Normal:ActiveWindows,NormalNC:NonActiveWindows,WinBarNC:NonActiveWinbar,StatusLineNC:NonActiveStatusLine
-- ]]

-- local group = vim.api.nvim_create_augroup('change_color', { clear = true })
-- vim.api.nvim_create_autocmd({ 'VimEnter', 'BufEnter', 'BufWinEnter' }, {
-- 	command = 'set colorcolumn=80',
-- 	group = group,
-- 	buffer = 0
-- })
-- vim.api.nvim_create_autocmd({ 'BufLeave' }, {
-- 	command = 'set colorcolumn=0',
-- 	group = group,
-- 	buffer = 0
-- })

-- Set winbar only for some filetypes.
vim.api.nvim_set_hl(0, 'WinSeparator', { guibg = None })

vim.api.nvim_create_autocmd({ 'FileType', 'BufWinEnter', 'BufFilePost' }, {
	callback = function()
		local winbar_filetype_exclude = {
			'help',
			'dashboard',
			'NvimTree',
			'harpoon',
			'undotree',
			'fugitive',
			'dbui',
			'packer',
			'glowpreview',
			'lsp-installer',
			'gitsigns_head', -- TODO: find filetype: tried 'gitsigns', 'Gitsigns', 'gitsigns.popup', 'gitsigns_status', 'GitSigns', 'gitSigns', 'gitsignspreview', 'gitsigns_preview', 'gitsigns_popup'
			'lspconfig', -- TODO: find filetype for nvim-lspconfig: tried 'lsp', 'nvim-lspconfig', 'lsp-config'
			'lspconfig_preview', -- TODO: find filetype for lsp diagnostic: tried 'diagnostic', 'DiagnosticError'
		}

		local excludes = function()
			if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
				vim.opt_local.winbar = nil
				return true
			end

			return false
		end

		if excludes() then return end

		local value = '%=%m' .. vim.fn.expand('%:~:.')

		local status_ok, _ = pcall(
			vim.api.nvim_set_option_value,
			'winbar',
			value,
			{ scope = 'local' }
		)

		if not status_ok then return end
	end
})
