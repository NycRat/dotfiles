local nnoremap = require("nycrat.keymap").nnoremap

local silent = {silent = true}

local harpoon_ui = require("harpoon.ui")

require('harpoon').setup({excluded_filetypes = {"NvimTree"}})

local function harpoon_nav_file(file_index)
  return function() harpoon_ui.nav_file(file_index) end
end

nnoremap("<leader>a", require("harpoon.mark").add_file, silent)
nnoremap("<leader>e", harpoon_ui.toggle_quick_menu, silent)

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
