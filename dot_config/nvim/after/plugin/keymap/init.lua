local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap
local vnoremap = Remap.vnoremap
local tnoremap = Remap.tnoremap

local silent = {silent = true}

-- easier to enter normal mode
inoremap("jk", "<Esc>")

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
vnoremap("n",
         [[:<c-u>let temp_variable=@"<CR>gvy:<c-u>let @/='\V<C-R>=escape(@",'/\')<CR>'<CR>:let @"=temp_variable<CR>]],
         silent)
-- vim.cmd[[vnoremap ml :<c-u>let temp_variable=@"<CR>gvy:<c-u>let @/='<C-R>=escape(@",'/\')<CR>'<CR>:let @"=temp_variable<CR>:<c-u>set hlsearch<CR>]]
-- vnoremap("ml", ":<c-u>let temp_variable=@\"<CR>gvy:<c-u>let @/='\V<C-R>=escape(@\",'/\')<CR>'<CR>:let @\"=temp_variable<CR>:<c-u>set hlsearch<CR>")

-- -- Resize Window
nnoremap("<C-]>", "2<C-W>>")
nnoremap("<C-[>", "2<C-W><")
-- nnoremap("<C- >k", "5<C-W>-")
-- nnoremap("<C- >j", "5<C-W>+")

-- Moving Text
vnoremap("J", ":m '>+1<CR>gv=gv", silent)
vnoremap("K", ":m '<-2<CR>gv=gv", silent)

-- Stacking Text
vnoremap("<D-j>", "J")

-- Copy Paste
vnoremap("<D-c>", "\"+y", silent);

inoremap("<D-v>", "<C-o>\"+p", silent);
nnoremap("<D-v>", "\"+p", silent);
vnoremap("<D-v>", "\"+p", silent);

-- built in terminal
nnoremap("<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", silent)
-- nnoremap("<Esc>", "<C-\\><C-n>", silent)
tnoremap("<C- >", "<C-\\><C-n>", silent)
tnoremap("<D-v>", function()
  local keys = vim.api.nvim_replace_termcodes("<C-\\><C-n>\"+pi", true, false,
                                              true)
  vim.api.nvim_feedkeys(keys, 'n', false)
end, silent)

-- writing
nnoremap("<C-e>", ":Goyo<CR>", silent)
nnoremap("<C-p>", ":PencilToggle<CR>:echo \"Pencil Toggled\"<CR>")
nnoremap("<C-s>", ":set spell!<CR>", silent)

inoremap("<C-e>", "<Esc>:Goyo<CR>a", silent)
inoremap("<C-p>", "<Esc>:PencilToggle<CR>:echo \"Pencil Toggled\"<CR>a")
inoremap("<C-s>", "<Esc>:set spell!<CR>a", silent)

-- plugins
nnoremap("<leader><tab>", ":NvimTreeToggle<CR> ", silent)
nnoremap("<leader>co", ":CccPick<CR>", silent)
nnoremap("<leader>cc", ":CccHighlighterToggle<CR>", silent)
nnoremap("<leader>cv", ":CccConvert<CR>", silent)
nnoremap("<leader>u", ":UndotreeToggle<CR>", silent)
nnoremap("<leader>gg", ":LazyGit<CR>", silent)
nnoremap('<leader>m', ":Neoformat<CR>")
vnoremap('<leader>m', ":Neoformat<CR>")

-- misc
vnoremap("<leader>p", "\"_dp")
vnoremap("<leader>P", "\"_dP")
nnoremap("<leader>rp", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
nnoremap("<leader>w", ":w<CR>")
nnoremap("<leader>q", ":q<CR>")

nnoremap("<D-->", ":GUIFontSizeChange -1<CR>", silent)
nnoremap("<D-=>", ":GUIFontSizeChange +1<CR>", silent)
inoremap("<D-->", "<Esc>:GUIFontSizeChange -1<CR>a", silent)
inoremap("<D-=>", "<Esc>:GUIFontSizeChange +1<CR>a", silent)

nnoremap("<leader><C-o>", ":!open %<CR><CR>", silent)
nnoremap("<D-b>", ":Gcc<CR>", silent)
nnoremap("<D-l>", ":Run<CR>", silent)
nnoremap("<D-r>", ":Ha<CR>", silent)

local fontIncrement = require("nycrat.fonts").fontIncrement
local fontDecrement = require("nycrat.fonts").fontDecrement

nnoremap("<D-m>", fontIncrement)
nnoremap("<D-n>", fontDecrement)
inoremap("<D-m>", fontIncrement)
inoremap("<D-n>", fontDecrement)
