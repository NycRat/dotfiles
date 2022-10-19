vim.api.nvim_create_user_command("Gcc", function ()
  vim.cmd[[!g++ -std=c++17 -o %:r.o %]]
end, {})

vim.api.nvim_create_user_command("Run", function ()
  vim.cmd[[!./%:r.o]]
end, {})

vim.api.nvim_create_user_command("Ha", function ()
  vim.cmd[[Gcc]]
  vim.cmd[[Run]]
end, {})
