local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local vnoremap = Remap.xnoremap
local tnoremap = Remap.tnoremap

local silent = { silent = true }

nnoremap("<leader>", "<Nop>", silent)
vnoremap("<leader>", "<Nop>", silent)
nnoremap("<C-s>", "<Cmd>silent !font-switcher; pkill -SIGUSR1 -a kitty<CR>")
nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
inoremap("<C-s>", "<Cmd>silent !font-switcher; pkill -SIGUSR1 -a kitty<CR>")
inoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- easier to enter normal mode
inoremap("jk", "<Esc>")

-- Movement
nnoremap("<C-L>", "<C-W><C-L>")
nnoremap("<C-H>", "<C-W><C-H>")
nnoremap("<C-K>", "<C-W><C-K>")
nnoremap("<C-J>", "<C-W><C-J>")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
xnoremap(
  "n",
  [[:<c-u>let temp_variable=@"<CR>gvy:<c-u>let @/='\V<C-R>=escape(@",'/\')<CR>'<CR>:let @"=temp_variable<CR>]],
  silent
)

-- Copy Paste
xnoremap("<leader>y", "\"+y", silent)

-- built in terminal
nnoremap("<leader>t", "<Cmd>sp<CR> <Cmd>term<CR> <Cmd>resize 20N<CR> i", silent)
tnoremap("<C-c><C-c>", "<C-\\><C-n>", silent)
tnoremap("<D-v>", function()
  local keys = vim.api.nvim_replace_termcodes("<C-\\><C-n>\"+pi", true, false, true)
  vim.api.nvim_feedkeys(keys, "n", false)
end, silent)

-- writing
-- nnoremap("<C-s>", "<Cmd>set spell!<CR>", silent)

-- misc
nnoremap("<leader>rp", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
nnoremap("<leader>w", "<Cmd>w<CR>")
nnoremap("<leader>q", "<Cmd>q<CR>")
nnoremap("<leader><C-o>", "<Cmd>!open %<CR><CR>", silent)
nnoremap("J", "mzJ`z")
xnoremap("J", "mzJ`z")

-- Running Code
nnoremap("<leader>cb", "<Cmd>Build<CR>", silent)
nnoremap("<leader>cd", "<Cmd>DebugBuild<CR>", silent)
nnoremap("<leader>cl", "<Cmd>Run<CR>", silent)
nnoremap("<leader>cr", "<Cmd>Ha<CR>", silent)


-- ahdshdad
inoremap("<Down>", "<Nop>")
inoremap("<Left>", "<Nop>")
inoremap("<Right>", "<Nop>")
inoremap("<Up>", "<Nop>")

nnoremap("<Down>", "<Nop>")
nnoremap("<Left>", "<Nop>")
nnoremap("<Right>", "<Nop>")
nnoremap("<Up>", "<Nop>")

vnoremap("<Down>", "<Nop>")
vnoremap("<Left>", "<Nop>")
vnoremap("<Right>", "<Nop>")
vnoremap("<Up>", "<Nop>")
