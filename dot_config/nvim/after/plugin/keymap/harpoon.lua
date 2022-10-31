local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local silent = {silent = true}

require('harpoon').setup({excluded_filetypes = {"NvimTree"}})

local function harpoon_nav_file(file_index)
    return function() require("harpoon.ui").nav_file(file_index) end
end

nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<leader>e", function() require("harpoon.ui").toggle_quick_menu() end,
         silent)

nnoremap("<leader>1", harpoon_nav_file(1), silent)
nnoremap("<leader>2", harpoon_nav_file(2), silent)
nnoremap("<leader>3", harpoon_nav_file(3), silent)
nnoremap("<leader>4", harpoon_nav_file(4), silent)
nnoremap("<leader>5", harpoon_nav_file(5), silent)
nnoremap("<leader>6", harpoon_nav_file(6), silent)
nnoremap("<leader>7", harpoon_nav_file(7), silent)
nnoremap("<leader>8", harpoon_nav_file(8), silent)
nnoremap("<leader>9", harpoon_nav_file(9), silent)
nnoremap("<leader>0", harpoon_nav_file(10), silent)

-- inoremap("<leader>a", function() require("harpoon.mark").add_file() end, silent)
-- inoremap("<leader>e", function() require("harpoon.ui").toggle_quick_menu() end,
--          silent)

-- inoremap("<leader>1", harpoon_nav_file(1), silent)
-- inoremap("<leader>2", harpoon_nav_file(2), silent)
-- inoremap("<leader>3", harpoon_nav_file(3), silent)
-- inoremap("<leader>4", harpoon_nav_file(4), silent)
-- inoremap("<leader>5", harpoon_nav_file(5), silent)
-- inoremap("<leader>6", harpoon_nav_file(6), silent)
-- inoremap("<leader>7", harpoon_nav_file(7), silent)
-- inoremap("<leader>8", harpoon_nav_file(8), silent)
-- inoremap("<leader>9", harpoon_nav_file(9), silent)
-- inoremap("<leader>0", harpoon_nav_file(10), silent)
