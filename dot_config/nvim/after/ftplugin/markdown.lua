local nnoremap = require("nycrat.keymap").nnoremap

vim.opt.wrap = true
nnoremap("j", "gj")
nnoremap("k", "gk")

vim.opt.conceallevel = 2
vim.opt["shiftwidth"] = 2
