local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap

local silent = {silent = true}

-- require("todo").setup({
--   default_file_extension = ".txt"
-- })
--
nnoremap("<leader>oo", "<Cmd>TodoClose<CR>", silent)
-- inoremap("<leader>oo", "<Cmd>TodoClose<CR>", silent)

nnoremap("<leader>ol", "<Cmd>TodoOpenFileList<CR>", silent)
-- inoremap("<leader>ol", "<Cmd>TodoOpenFileList<CR>", silent)

nnoremap("<leader>o1", "<Cmd>TodoOpen<CR>", silent)
nnoremap("<leader>o2", "<Cmd>TodoOpenIndex 1<CR>", silent)
nnoremap("<leader>o3", "<Cmd>TodoOpenIndex 2<CR>", silent)
nnoremap("<leader>o4", "<Cmd>TodoOpenIndex 3<CR>", silent)
nnoremap("<leader>o5", "<Cmd>TodoOpenIndex 4<CR>", silent)
nnoremap("<leader>o6", "<Cmd>TodoOpenIndex 5<CR>", silent)
nnoremap("<leader>o7", "<Cmd>TodoOpenIndex 6<CR>", silent)
nnoremap("<leader>o8", "<Cmd>TodoOpenIndex 7<CR>", silent)
nnoremap("<leader>o9", "<Cmd>TodoOpenIndex 8<CR>", silent)
nnoremap("<leader>o0", "<Cmd>TodoOpenIndex 9<CR>", silent)

-- inoremap("<leader>o1", "<Cmd>TodoOpen<CR>", silent)
-- inoremap("<leader>o2", "<Cmd>TodoOpenIndex 1<CR>", silent)
-- inoremap("<leader>o3", "<Cmd>TodoOpenIndex 2<CR>", silent)
-- inoremap("<leader>o4", "<Cmd>TodoOpenIndex 3<CR>", silent)
-- inoremap("<leader>o5", "<Cmd>TodoOpenIndex 4<CR>", silent)
-- inoremap("<leader>o6", "<Cmd>TodoOpenIndex 5<CR>", silent)
-- inoremap("<leader>o7", "<Cmd>TodoOpenIndex 6<CR>", silent)
-- inoremap("<leader>o8", "<Cmd>TodoOpenIndex 7<CR>", silent)
-- inoremap("<leader>o9", "<Cmd>TodoOpenIndex 8<CR>", silent)
-- inoremap("<leader>o0", "<Cmd>TodoOpenIndex 9<CR>", silent)
