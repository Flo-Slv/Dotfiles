vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true })

vim.cmd [[
	if has('persistent_undo')
		let target_path = expand('~/Flo/Dotfiles/nvim-lua/lua/undodir')

		" If the location does not exist,
		" create the directory and any parent directories.
		if !isdirectory(target_path)
			call mkdir(target_path, 'p', 0700)
		endif

		let &undodir=target_path
		set undofile
	endif
]]
