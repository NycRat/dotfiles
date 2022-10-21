vim.api.nvim_create_user_command("Gcc", function()
    vim.cmd [[!g++ -std=c++17 -o %:r.o %]]
end, {})

vim.api.nvim_create_user_command("Run", function()
    vim.cmd [[sp]]
    vim.cmd [[term %:r.o]]
    vim.cmd [[resize 20N]]
    local keys = vim.api.nvim_replace_termcodes("i", true, false, true)
    vim.api.nvim_feedkeys(keys, 'n', false)

    -- vim.cmd[[!./%:r.o]]
end, {})

vim.api.nvim_create_user_command("Ha", function()
    vim.cmd [[Gcc]]
    vim.cmd [[Run]]
end, {})
