-- require'vimade'
vim.g.vimade = {
	normalid = '',
	normalncid = '',
	basefg = '',
	basebg = '',
	fadelevel = 0.4,
	colbufsize = 15,
	rowbufsize = 15,
	checkinterval = 100,
	usecursorhold = 0,
	detecttermcolors = 0,
	enablescroll = 1,
	enablesigns = 1,
	signsid = 13100,
	signsretentionperiod = 4000,
	fademinimap = 1,
	fadepriority = 10,
	groupdiff = 1,
	groupscrollbind = 0,
	enablefocusfading = 0,
	enablebasegroups = 1,
	enabletreesitter = 0,
	basegroups = { 'Folded', 'Search', 'SignColumn', 'LineNr', 'CursorLine', 'CursorLineNr', 'DiffAdd', 'DiffChange', 'DiffDelete', 'DiffText', 'FoldColumn', 'Whitespace' }
}

vim.g.enable = true
vim.g.vimade.fadelevel = 0.7
vim.g.vimade.enablesigns = true
