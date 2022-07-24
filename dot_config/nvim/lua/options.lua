vim.g.mapleader = " "

local options = {
  autoindent = true,
  smartindent = true,
  shiftround = true,
  smarttab = true,
  number = true,
  relativenumber = true,
  wrap = false,
  expandtab = true,
  incsearch = true,
  tabstop = 2,
  cursorline = true,
  ignorecase = true,
  hlsearch = false,
  smartcase = true,
  swapfile = false,
  splitbelow = true,
  splitright = true,
  scrolloff = 3,
  errorbells = false,
  shiftwidth = 2,
  numberwidth = 4,
  termguicolors = true,
  colorcolumn = '80',
  showmode = false,
  showtabline = 2,
  signcolumn = 'yes',
  mouse = 'a',
  guicursor = 'a:block',
  hidden = true,
  backup = false,
  writebackup = false,
  updatetime = 200,
}

for option, value in pairs(options) do
  vim.opt[option] = value
end

