local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local silent = {silent = true}

require('harpoon').setup({excluded_filetypes = {"NvimTree"}})

local function harpoon_nav_file(file_index)
    return function() require("harpoon.ui").nav_file(file_index) end
end

nnoremap("<D-a>", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<D-e>", function() require("harpoon.ui").toggle_quick_menu() end,
         silent)

nnoremap("<D-1>", harpoon_nav_file(1), silent)
nnoremap("<D-2>", harpoon_nav_file(2), silent)
nnoremap("<D-3>", harpoon_nav_file(3), silent)
nnoremap("<D-4>", harpoon_nav_file(4), silent)
nnoremap("<D-5>", harpoon_nav_file(5), silent)
nnoremap("<D-6>", harpoon_nav_file(6), silent)
nnoremap("<D-7>", harpoon_nav_file(7), silent)
nnoremap("<D-8>", harpoon_nav_file(8), silent)
nnoremap("<D-9>", harpoon_nav_file(9), silent)
nnoremap("<D-0>", harpoon_nav_file(10), silent)

inoremap("<D-a>", function() require("harpoon.mark").add_file() end, silent)
inoremap("<D-e>", function() require("harpoon.ui").toggle_quick_menu() end,
         silent)

inoremap("<D-1>", harpoon_nav_file(1), silent)
inoremap("<D-2>", harpoon_nav_file(2), silent)
inoremap("<D-3>", harpoon_nav_file(3), silent)
inoremap("<D-4>", harpoon_nav_file(4), silent)
inoremap("<D-5>", harpoon_nav_file(5), silent)
inoremap("<D-6>", harpoon_nav_file(6), silent)
inoremap("<D-7>", harpoon_nav_file(7), silent)
inoremap("<D-8>", harpoon_nav_file(8), silent)
inoremap("<D-9>", harpoon_nav_file(9), silent)
inoremap("<D-0>", harpoon_nav_file(10), silent)
