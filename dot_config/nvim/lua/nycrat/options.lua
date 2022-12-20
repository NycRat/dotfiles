local options = {
  autoindent = true,
  smartindent = true,
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  showtabline = 2,

  number = true,
  relativenumber = true,
  numberwidth = 4,
  incsearch = true,
  hlsearch = false,
  ignorecase = true,
  smartcase = true,

  splitbelow = true,
  splitright = true,

  termguicolors = true,
  hidden = true,
  signcolumn = "yes",
  showmode = false,
  errorbells = false,
  wrap = false,
  cursorline = true,
  fileencoding = "utf-8",

  backup = false,
  writebackup = false,
  swapfile = false,
  undodir = os.getenv("HOME") .. "/.vim/undodir",
  undofile = true,

  colorcolumn = "80",
  updatetime = 200,
  scrolloff = 10,
  mouse = 'a',
  guicursor = 'a:block',

  title = true,
  -- titlestring = "%t - Wvim",
  guifont = "MesloLGS NF:h18"
  -- clipboard = "unnamedplus",
}

-- vim.opt.nrformats:append("alpha") -- increment letters
vim.opt.shortmess:append("I") -- don't show default startup message

for option, value in pairs(options) do vim.opt[option] = value end
