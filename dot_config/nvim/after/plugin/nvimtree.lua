local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set("n", "z", api.tree.change_root_to_node, opts("CD"))
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
  view = {
    side = "right",
    width = 40,
  },
  renderer = {
    special_files = {
      -- "Cargo.toml",
      -- "Makefile",
      -- "README.md",
      -- "readme.md",
      -- ".gitignore",
    },
  },
  actions = { open_file = { quit_on_open = true } },
  filters = { dotfiles = false, custom = { "^.DS_Store$", "^\\.git$" } },
  git = { enable = true, ignore = false, timeout = 500 },
})
