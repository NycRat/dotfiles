local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local silent = { silent = true }

require('harpoon').setup({
  excluded_filetypes = {
    "nerdtree",
  },
})

nnoremap("<D-a>", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<D-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)

nnoremap("<D-1>", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<D-2>", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<D-3>", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<D-4>", function() require("harpoon.ui").nav_file(4) end, silent)
nnoremap("<D-5>", function() require("harpoon.ui").nav_file(5) end, silent)
nnoremap("<D-6>", function() require("harpoon.ui").nav_file(6) end, silent)
nnoremap("<D-7>", function() require("harpoon.ui").nav_file(7) end, silent)
nnoremap("<D-8>", function() require("harpoon.ui").nav_file(8) end, silent)
nnoremap("<D-9>", function() require("harpoon.ui").nav_file(9) end, silent)
nnoremap("<D-0>", function() require("harpoon.ui").nav_file(10) end, silent)

inoremap("<D-a>", function() require("harpoon.mark").add_file() end, silent)
inoremap("<D-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)

inoremap("<D-1>", function() require("harpoon.ui").nav_file(1) end, silent)
inoremap("<D-2>", function() require("harpoon.ui").nav_file(2) end, silent)
inoremap("<D-3>", function() require("harpoon.ui").nav_file(3) end, silent)
inoremap("<D-4>", function() require("harpoon.ui").nav_file(4) end, silent)
inoremap("<D-5>", function() require("harpoon.ui").nav_file(5) end, silent)
inoremap("<D-6>", function() require("harpoon.ui").nav_file(6) end, silent)
inoremap("<D-7>", function() require("harpoon.ui").nav_file(7) end, silent)
inoremap("<D-8>", function() require("harpoon.ui").nav_file(8) end, silent)
inoremap("<D-9>", function() require("harpoon.ui").nav_file(9) end, silent)
inoremap("<D-0>", function() require("harpoon.ui").nav_file(10) end, silent)
