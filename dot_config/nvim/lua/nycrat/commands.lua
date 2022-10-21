vim.api.nvim_create_user_command("Gcc", function()
  local filetype = vim.bo.filetype
  if (filetype == "c" or filetype == "cpp") then
    vim.cmd [[!g++ -std=c++17 -o %:p:r.o %]]
  end
end, {})

vim.api.nvim_create_user_command("Run", function()
  local filetype = vim.bo.filetype
  if (filetype == "c" or filetype == "cpp") then
    vim.cmd [[sp]]
    vim.cmd [[term %:p:r.o]]
    vim.cmd [[resize 20N]]
    local keys = vim.api.nvim_replace_termcodes("i", true, false, true)
    vim.api.nvim_feedkeys(keys, 'n', false)

    -- vim.cmd[[!./%:r.o]]
  end
end, {})

vim.api.nvim_create_user_command("Ha", function()
  vim.cmd [[Gcc]]
  vim.cmd [[Run]]
end, {})
