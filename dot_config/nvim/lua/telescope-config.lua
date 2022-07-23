local telescope = require("telescope")

telescope.setup{
  defaults = {
    file_ignore_patterns = {"node_modules"}
  },
  pickers = {
    find_files = {
      -- theme = "ivy",
      theme = "dropdown",
      -- theme = "cursor",
    }
  }
}

vim.api.nvim_set_keymap('n', '<leader>p', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>x', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
