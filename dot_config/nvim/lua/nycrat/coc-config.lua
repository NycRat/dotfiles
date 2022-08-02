vim.api.nvim_set_keymap("n", "<leader>.", "<Plug>(coc-codeaction)", {})
vim.api.nvim_set_keymap("n", "<leader>l", ":CocCommand eslint.executeAutofix<CR>", {})
vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<leader>f", "<Plug>(coc-definition)", {silent = true})

-- TODO find other key bind that doesn't conflict with tmux
vim.api.nvim_set_keymap("i", "<C-Space>", "coc#refresh()", { silent = true, expr = true })

-- Autocomplete
-- TODO make the tabbing fill in first option
vim.api.nvim_set_keymap("i", "<TAB>", "coc#pum#visible() ? coc#pum#next(1) : '<Tab>'", {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", "coc#pum#visible() ? coc#pum#prev(1) : '<C-h>'", {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "coc#pum#visible() ? coc#_select_confirm() : '<CR>'", {noremap = true, expr = true})

