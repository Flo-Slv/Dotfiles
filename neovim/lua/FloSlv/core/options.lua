-- ###########
-- # OPTIONS #
-- ###########

local vim = vim

local options = {
  -- DISPLAY
  title = true,
  number = true,
  relativenumber = true,
  wrap = false,
  scrolloff = 10,
  sidescrolloff = 10,
  mouse = "a",
  cursorline = true,
  colorcolumn = "80",
  numberwidth = 4,
  textwidth = 80,
  shiftwidth = 2,
  tabstop = 2,
  softtabstop = 2,
  fileencoding = "utf-8",
  signcolumn = "yes:2",
  cmdheight = 2,
  showmode = false,
  splitbelow = true,
  splitright = true,
  smartindent = true,
  clipboard = "unnamedplus",
  laststatus = 2, -- Set to 3 for an unique lualine bar.
  termguicolors = true, -- To enable highlight groups.
  background = "dark",
  updatetime = 1000,
  -- SAVING
  backup = false,
  writebackup = false,
  swapfile = false,
  undodir = vim.fn.expand("~") .. "/Flo/Dotfiles/neovim/lua/FloSlv/core/undodir",
  undofile = true,
  undolevels = 1000,
  -- SEARCH
  ignorecase = true,
  smartcase = true,
  hlsearch = false,
  -- COMPLETION
  wildignore = "*.o,*.r,*.so,*.sl",
  completeopt = { "menu", "menuone", "noselect" }, -- Need it for nvim-cmp.
  -- REMOVE BEEP
  visualbell = true,
  errorbells = false,
}

for key, value in pairs(options) do
  vim.opt[key] = value
end
