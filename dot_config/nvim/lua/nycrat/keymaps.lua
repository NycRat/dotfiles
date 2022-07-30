-- easier to enter normal mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = false , silent = true })

-- window movement
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>[', "<C-o>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>]', "<C-i>", { noremap = true })

-- built in terminal
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})

-- harpoon
vim.api.nvim_set_keymap("n", "<leader>mm", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>ma", ":lua require('harpoon.mark').add_file()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>ml", ":lua require('harpoon.ui').nav_next()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>mh", ":lua require('harpoon.ui').nav_prev()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>m1", ":lua require('harpoon.ui').nav_file(1)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>m2", ":lua require('harpoon.ui').nav_file(2)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>m3", ":lua require('harpoon.ui').nav_file(3)<CR>", {noremap = true, silent = true})

-- misc
vim.api.nvim_set_keymap('n', '<leader>sv', ':vs<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>sh', ':sp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><tab>', ":NERDTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>co', ':VCoolor<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>rp', ':%s/', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ut', ":UndotreeToggle<CR>", { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>m', ":PrettierAsync<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w', ":w<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ":q<CR>", { noremap = true })

