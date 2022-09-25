local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local silent = { silent = true }

-- require("todo").setup({
--   default_file_extension = ".txt"
-- })
--
nnoremap("<D-o><D-o>", ":TodoClose<CR>", silent)
inoremap("<D-o><D-o>", "<Esc>:TodoClose<CR>a", silent)


nnoremap("<D-o><D-1>", ":TodoOpen<CR>", silent)
nnoremap("<D-o><D-2>", ":TodoOpen school.md<CR>", silent)

inoremap("<D-o><D-1>", "<Esc>:TodoOpen<CR>a", silent)
inoremap("<D-o><D-2>", "<Esc>:TodoOpen school.md<CR>a", silent)
