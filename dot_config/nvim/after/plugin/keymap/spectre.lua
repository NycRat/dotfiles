local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap

nnoremap("<leader>S", function() require("spectre").open() end)
-- search current word
nnoremap("<leader>sw",
         function() require('spectre').open_visual({select_word = true}) end)

vnoremap("<leader>s", function() require('spectre').open_visual() end)
--   search in current file
nnoremap("<leader>sp", function()
    local keys = "viw"
    require('spectre').open_file_search()
end)
--  run command :spectre
