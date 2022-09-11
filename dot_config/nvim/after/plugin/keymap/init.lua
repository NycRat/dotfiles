local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap
local vnoremap = Remap.vnoremap
local tnoremap = Remap.tnoremap

-- easier to enter normal mode
inoremap("jk", "<Esc>", { silent = true })

-- Movement
nnoremap("<C-L>", "<C-W><C-L>")
nnoremap("<C-H>", "<C-W><C-H>")
nnoremap("<C-K>", "<C-W><C-K>")
nnoremap("<C-J>", "<C-W><C-J>")
nnoremap("<leader>[", "<C-o>")
nnoremap("<leader>]", "<C-i>")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

-- -- Resize Window
-- nnoremap("<C-W>l", "<C-W>>")
-- nnoremap("<C-W>h", "<C-W><")
-- nnoremap("<C-W>k", "<C-W>-")
-- nnoremap("<S-W>j", "<C-W>+")

-- Moving Text
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- built in terminal
nnoremap("<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", { silent = true })
-- nnoremap("<Esc>", "<C-\\><C-n>", { silent = true })
tnoremap("<C-q>", "<C-\\><C-n>", { silent = true })

-- misc

-- nnoremap("<leader>sv", ":vs<CR>")
-- nnoremap("<leader>sh", ":sp<CR>")
nnoremap("<leader><tab>", ":NERDTreeToggle<CR>")
nnoremap("<leader>co", ":VCoolor<CR>")
nnoremap("<leader>rp", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
nnoremap("<leader>u", ":UndotreeToggle<CR>")
nnoremap("<leader>gg", ":LazyGit<CR>")
nnoremap('<leader>m', ":Neoformat<CR>")
vnoremap('<leader>m', ":Neoformat<CR>")
nnoremap("<leader>w", ":w<CR>")
nnoremap("<leader>q", ":q<CR>")

nnoremap("<leader>e", ":Peepsight<CR>")

nnoremap("<C-->", ":GUIFontSizeChange -1<CR>")
nnoremap("<C-=>", ":GUIFontSizeChange +1<CR>")
inoremap("<C-->", "<Esc>:GUIFontSizeChange -1<CR>a")
inoremap("<C-=>", "<Esc>:GUIFontSizeChange +1<CR>a")
