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
nnoremap("<D-]>", "2<C-W>>")
nnoremap("<D-[>", "2<C-W><")
-- nnoremap("<C- >k", "5<C-W>-")
-- nnoremap("<C- >j", "5<C-W>+")

-- Moving Text (who actually uses this)
-- vnoremap("J", "<Cmd>m '>+1<CR>gv=gv", silent)
-- vnoremap("K", "<Cmd>m '<-2<CR>gv=gv", silent)

-- Stacking Text
vnoremap("<D-j>", "J")

-- Copy Paste
vnoremap("<leader>y", "\"+y", silent)

-- Neovide Copy Paste
vnoremap("<D-c>", "\"+y", silent)

inoremap("<D-v>", "<C-o>\"+p", silent)
nnoremap("<D-v>", "\"+p", silent)
vnoremap("<D-v>", "\"+p", silent)

-- built in terminal
nnoremap("<leader>t", "<Cmd>sp<CR> <Cmd>term<CR> <Cmd>resize 20N<CR> i", silent)
-- nnoremap("<Esc>", "<C-\\><C-n>", silent)
tnoremap("<C-c><C-c>", "<C-\\><C-n>", silent)
tnoremap("<D-v>", function()
  local keys = vim.api.nvim_replace_termcodes("<C-\\><C-n>\"+pi", true, false,
                                              true)
  vim.api.nvim_feedkeys(keys, 'n', false)
end, silent)

-- writing
nnoremap("<C-e>", "<Cmd>Goyo<CR>", silent)
-- nnoremap("<C-p>", "<Cmd>PencilToggle<CR><Cmd>echo \"Pencil Toggled\"<CR>")
nnoremap("<C-s>", "<Cmd>set spell!<CR>", silent)

inoremap("<C-e>", "<Cmd>Goyo<CR>", silent)
-- inoremap("<C-p>", "<Cmd>PencilToggle<CR><Cmd>echo \"Pencil Toggled\"<CR>")
inoremap("<C-s>", "<Cmd>set spell!<CR>", silent)

-- plugins
nnoremap("<leader><tab>", "<Cmd>NvimTreeToggle<CR> ", silent)
nnoremap("<leader>co", "<Cmd>CccPick<CR>", silent)
nnoremap("<leader>cc", "<Cmd>CccHighlighterToggle<CR>", silent)
nnoremap("<leader>cv", "<Cmd>CccConvert<CR>", silent)
nnoremap("<leader>u", "<Cmd>UndotreeToggle<CR>", silent)
nnoremap("<leader>gg", "<Cmd>LazyGit<CR>", silent)
nnoremap('<leader>m', "<Cmd>Neoformat<CR>")
vnoremap('<leader>m', ":Neoformat<CR>")
nnoremap('<leader>cm', "<Cmd>CellularAutomaton make_it_rain<CR>")

-- misc
vnoremap("<leader>p", "\"_dp")
vnoremap("<leader>P", "\"_dP")
nnoremap("<leader>rp", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
nnoremap("<leader>w", "<Cmd>w<CR>")
nnoremap("<leader>q", "<Cmd>q<CR>")
nnoremap("<leader><C-o>", "<Cmd>!open %<CR><CR>", silent)
nnoremap("J", "mzJ`z")
vnoremap("J", "mzJ`z")

-- Running Code
nnoremap("<leader>cb", "<Cmd>Build<CR>", silent)
nnoremap("<leader>cl", "<Cmd>Run<CR>", silent)
nnoremap("<leader>cr", "<Cmd>Ha<CR>", silent)

-- gui only
nnoremap("<D-->", "<Cmd>FontSizeDecrement<CR>", silent)
nnoremap("<D-=>", "<Cmd>FontSizeIncrement<CR>", silent)
inoremap("<D-->", "<Cmd>FontSizeDecrement<CR>", silent)
inoremap("<D-=>", "<Cmd>FontSizeIncrement<CR>", silent)

nnoremap("<D-m>", "<Cmd>FontIndexIncrement<CR>")
nnoremap("<D-n>", "<Cmd>FontIndexDecrement<CR>")
inoremap("<D-m>", "<Cmd>FontIndexIncrement<CR>")
inoremap("<D-n>", "<Cmd>FontIndexDecrement<CR>")
