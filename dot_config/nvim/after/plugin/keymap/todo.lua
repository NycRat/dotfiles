local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local silent = {silent = true}

-- require("todo").setup({
--   default_file_extension = ".txt"
-- })
--
nnoremap("<D-o><D-o>", "<Cmd>TodoClose<CR>", silent)
inoremap("<D-o><D-o>", "<Cmd>TodoClose<CR>", silent)

nnoremap("<D-o><D-l>", "<Cmd>TodoOpenFileList<CR>", silent)
inoremap("<D-o><D-l>", "<Cmd>TodoOpenFileList<CR>", silent)

nnoremap("<D-o><D-1>", "<Cmd>TodoOpen<CR>", silent)
nnoremap("<D-o><D-2>", "<Cmd>TodoOpenIndex 1<CR>", silent)
nnoremap("<D-o><D-3>", "<Cmd>TodoOpenIndex 2<CR>", silent)
nnoremap("<D-o><D-4>", "<Cmd>TodoOpenIndex 3<CR>", silent)
nnoremap("<D-o><D-5>", "<Cmd>TodoOpenIndex 4<CR>", silent)
nnoremap("<D-o><D-6>", "<Cmd>TodoOpenIndex 5<CR>", silent)
nnoremap("<D-o><D-7>", "<Cmd>TodoOpenIndex 6<CR>", silent)
nnoremap("<D-o><D-8>", "<Cmd>TodoOpenIndex 7<CR>", silent)
nnoremap("<D-o><D-9>", "<Cmd>TodoOpenIndex 8<CR>", silent)
nnoremap("<D-o><D-0>", "<Cmd>TodoOpenIndex 9<CR>", silent)

inoremap("<D-o><D-1>", "<Cmd>TodoOpen<CR>", silent)
inoremap("<D-o><D-2>", "<Cmd>TodoOpenIndex 1<CR>", silent)
inoremap("<D-o><D-3>", "<Cmd>TodoOpenIndex 2<CR>", silent)
inoremap("<D-o><D-4>", "<Cmd>TodoOpenIndex 3<CR>", silent)
inoremap("<D-o><D-5>", "<Cmd>TodoOpenIndex 4<CR>", silent)
inoremap("<D-o><D-6>", "<Cmd>TodoOpenIndex 5<CR>", silent)
inoremap("<D-o><D-7>", "<Cmd>TodoOpenIndex 6<CR>", silent)
inoremap("<D-o><D-8>", "<Cmd>TodoOpenIndex 7<CR>", silent)
inoremap("<D-o><D-9>", "<Cmd>TodoOpenIndex 8<CR>", silent)
inoremap("<D-o><D-0>", "<Cmd>TodoOpenIndex 9<CR>", silent)
