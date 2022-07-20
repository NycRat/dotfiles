vim.g.tokyonight_style = "night"
vim.g.ayucolor = "light"
vim.cmd[[colorscheme gruvbox]]

vim.g.mapleader = " "
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.shiftround = true
vim.o.smarttab = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.smartcase = true
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.shiftwidth = 2
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.colorcolumn = '80'
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'
vim.o.guicursor = 'a:block'
vim.o.hidden = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 200


-- easier to enter normal mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = false , silent = true })

-- window movement
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>[', "<C-o>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>]', "<C-i>", { noremap = true })

-- terminal
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})

-- misc
vim.api.nvim_set_keymap('n', '<leader>v', ':vs<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><tab>', ":NERDTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>co', ':VCoolor<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'rp', ':%s/', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ut', ":UndotreeToggle<CR>", { noremap = true })

vim.g["NERDTreeWinPos"] = "right"
-- vim.g["NERDTreeWinPos"] = "left"
vim.g["NERDTreeShowHidden"] = 1
vim.g["NERDTreeIgnore"] = {'.DS_Store$' }

vim.g["prettier#autoformat"] = 1
vim.g["prettier#autoformat_require_pragma"] = 0
vim.cmd('autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync')
vim.g["vcoolor_lowercase"] = 1
