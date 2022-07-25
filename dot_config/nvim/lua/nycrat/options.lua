local options = {
  autoindent = true,
  smartindent = true,
  smarttab = true,
  expandtab = true,
  shiftround = true,
  shiftwidth = 2,
  tabstop = 2,
  numberwidth = 4,
  showtabline = 2,

  number = true,
  relativenumber = true,

  incsearch = true,
  hlsearch = false,
  -- ignorecase = true,
  smartcase = true,

  splitbelow = true,
  splitright = true,

  termguicolors = true,
  hidden = true,
  signcolumn = 'yes',
  showmode = false,
  backup = false,
  writebackup = false,
  errorbells = false,
  swapfile = false,
  wrap = false,
  cursorline = true,
  fileencoding = "utf-8",


  colorcolumn = '80',
  updatetime = 200,
  scrolloff = 10,
  mouse = 'a',
  guicursor = 'a:block',

  title = true,
  titlestring = "%f - RatNvim"
}

vim.opt.shortmess:append "I" -- don't show default startup message

for option, value in pairs(options) do
  vim.opt[option] = value
end

