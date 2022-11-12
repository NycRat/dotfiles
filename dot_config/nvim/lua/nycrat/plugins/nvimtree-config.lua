vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    mappings = {list = {{key = "u", action = "dir_up"}}},
    side = "right",
    width = 40
  },
  renderer = {
    special_files = {
      -- "Cargo.toml",
      -- "Makefile",
      -- "README.md",
      -- "readme.md",
      -- ".gitignore",
    }
  },
  filters = {dotfiles = false, custom = {"^.DS_Store$", "^\\.git$"}},
  git = {enable = true, ignore = false, timeout = 500}
})
