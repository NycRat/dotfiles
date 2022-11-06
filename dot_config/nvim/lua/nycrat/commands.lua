vim.api.nvim_create_user_command("Build", function()
  local filetype = vim.bo.filetype
  if (filetype == "c" or filetype == "cpp") then
    vim.cmd [[!g++ -std=c++17 -o %:p:r.o %]]
  elseif (filetype == "rust") then
    vim.cmd [[!cargo build --release]]
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
  elseif (filetype == "rust") then
    vim.cmd [[sp]]
    -- vim.cmd [[term ./target/release/target]]
    vim.cmd [[term cargo run --release]]
    vim.cmd [[resize 20N]]
    local keys = vim.api.nvim_replace_termcodes("i", true, false, true)
    vim.api.nvim_feedkeys(keys, 'n', false)
  end
end, {})

vim.api.nvim_create_user_command("Ha", function()
  vim.cmd [[Build]]
  vim.cmd [[Run]]
end, {})
