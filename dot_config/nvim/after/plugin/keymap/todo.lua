local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local silent = {silent = true}

-- require("todo").setup({
--   default_file_extension = ".txt"
-- })
--
nnoremap("<D-o><D-o>", ":TodoClose<CR>", silent)
inoremap("<D-o><D-o>", "<Esc>:TodoClose<CR>a", silent)

nnoremap("<D-o><D-l>", ":TodoOpenFileList<CR>", silent)
inoremap("<D-o><D-l>", "<Esc>:TodoOpenFileList<CR>a", silent)

nnoremap("<D-o><D-1>", ":TodoOpen<CR>", silent)
nnoremap("<D-o><D-2>", ":TodoOpenIndex 1<CR>", silent)
nnoremap("<D-o><D-3>", ":TodoOpenIndex 2<CR>", silent)
nnoremap("<D-o><D-4>", ":TodoOpenIndex 3<CR>", silent)
nnoremap("<D-o><D-5>", ":TodoOpenIndex 4<CR>", silent)
nnoremap("<D-o><D-6>", ":TodoOpenIndex 5<CR>", silent)
nnoremap("<D-o><D-7>", ":TodoOpenIndex 6<CR>", silent)
nnoremap("<D-o><D-8>", ":TodoOpenIndex 7<CR>", silent)
nnoremap("<D-o><D-9>", ":TodoOpenIndex 8<CR>", silent)
nnoremap("<D-o><D-0>", ":TodoOpenIndex 9<CR>", silent)

inoremap("<D-o><D-1>", "<Esc>:TodoOpen<CR>a", silent)
inoremap("<D-o><D-2>", "<Esc>:TodoOpenIndex 1<CR>a", silent)
inoremap("<D-o><D-3>", "<Esc>:TodoOpenIndex 2<CR>a", silent)
inoremap("<D-o><D-4>", "<Esc>:TodoOpenIndex 3<CR>a", silent)
inoremap("<D-o><D-5>", "<Esc>:TodoOpenIndex 4<CR>a", silent)
inoremap("<D-o><D-6>", "<Esc>:TodoOpenIndex 5<CR>a", silent)
inoremap("<D-o><D-7>", "<Esc>:TodoOpenIndex 6<CR>a", silent)
inoremap("<D-o><D-8>", "<Esc>:TodoOpenIndex 7<CR>a", silent)
inoremap("<D-o><D-9>", "<Esc>:TodoOpenIndex 8<CR>a", silent)
inoremap("<D-o><D-0>", "<Esc>:TodoOpenIndex 9<CR>a", silent)
