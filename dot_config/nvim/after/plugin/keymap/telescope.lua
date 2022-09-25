local nnoremap = require("nycrat.keymap").nnoremap

nnoremap("<leader>p", "<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<leader>x", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
nnoremap("<leader>b", "<cmd>lua require('telescope.builtin').buffers()<CR>")
