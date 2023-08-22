local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap

local spectre = require("spectre")

nnoremap("<leader>S", spectre.open)
nnoremap("<leader>sw", function()
	spectre.open_visual({ select_word = true })
end)
vnoremap("<leader>s", spectre.open_visual)
nnoremap("<leader>sp", spectre.open_file_search)
