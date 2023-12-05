local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap

local silent = { silent = true }

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
    -- side = "right",
    -- width = 40,
    float = {
      enable = true,
      open_win_config = {
        width = math.floor(vim.o.columns * 0.8),
        height = vim.o.lines - 6,
        row = 2,
        col = math.floor(vim.o.columns * 0.1),
      }
    },
  },
  actions = { open_file = { quit_on_open = true } },
  filters = { dotfiles = false, custom = { "^.DS_Store$", "^\\.git$" } },
  git = { enable = true, ignore = false, timeout = 500 },
})

nnoremap("<leader><tab>", "<Cmd>NvimTreeToggle<CR>", silent)
nnoremap("<leader>f<tab>", "<Cmd>NvimTreeFindFileToggle<CR>", silent)
nnoremap("<leader>z", "<Cmd>NvimTreeCollapse<CR>", silent)
