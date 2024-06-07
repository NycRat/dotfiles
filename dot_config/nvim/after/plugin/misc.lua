local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local xnoremap = Remap.xnoremap
local silent = { silent = true }

vim.g.calendar_google_calendar = 1
vim.g.calendar_google_task = 1

vim.cmd([[source ~/.cache/calendar.vim/credentials.vim]])

vim.g.vimtex_syntax_conceal_disable = 1
vim.g.vimtex_view_method = "skim"
vim.g.vimtex_compiler_latexmk = {
  out_dir = "out",
}

require("lualine").setup({
  sections = {
    lualine_x = {
      {
        require("noice").api.statusline.mode.get,
        cond = require("noice").api.statusline.mode.has,
        color = { fg = "#aaf7f0" },
      },
      "filetype",
    },
    lualine_y = {},
    lualine_z = {
      function()
        if vim.fn.line("$") == 1 then
          return "1 line"
        else
          return vim.fn.line("$") .. " lines"
        end
      end,
    },
  },
})

require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { "latex", "markdown" },
    disable = function(lang, buf)
      local max_filesize = 100 * 1024 -- 100 KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
      if lang == "latex" then
        return true
      end
      return false
    end,
  },
  indent = {
    enable = false,
    -- disable = { "cpp", "typescript", "typescriptreact", "rust" },
  },
})

require("nvim-ts-autotag").setup()
require("treesitter-context").setup({
  max_lines = 1,
})

require("hex").setup()
require("ibl").setup({
  indent = {
    -- char = "┆",
    char = "│",
  },
  scope = {
    enabled = false,
  },
})
require("gitsigns").setup()
require("nvim-autopairs").setup()
require("nvim-surround").setup()
require("cloak").setup()
require("ccc").setup({
  highlighter = {
    auto_enable = true,
    lsp = true,
  },
})

require("outline").setup({})

require("refactoring").setup()
nnoremap("<leader>rr", require("refactoring").select_refactor)
xnoremap("<leader>rr", require("refactoring").select_refactor)

vim.g["mkdp_markdown_css"] = vim.fn.expand("~/.config/nvim/md.css")
vim.g["mkdp_theme"] = "light"

local spectre = require("spectre")
spectre.setup()

-- keymaps

-- nnoremap("<leader>dd", function() require("duck").hatch("ඞ", 10) end)
nnoremap("<leader>dd", function() require("duck").hatch("🦀", 10) end)
nnoremap("<leader>dk", function() require("duck").cook() end)

nnoremap("<leader>S", spectre.open)
xnoremap("<leader>S", spectre.open_visual)
nnoremap("<leader>u", "<Cmd>UndotreeToggle<CR>", silent)
nnoremap("<leader>gg", "<Cmd>LazyGit<CR>", silent)
nnoremap("<leader>gb", "<Cmd>ToggleBlameLine<CR>", silent)
nnoremap("<leader>co", "<Cmd>CccPick<CR>", silent)
nnoremap("<leader>cc", "<Cmd>CccHighlighterToggle<CR>", silent)
nnoremap("<leader>cv", "<Cmd>CccConvert<CR>", silent)
nnoremap("<leader>s", "<Cmd>Outline<CR>", silent)
nnoremap("<leader>oo", "<Cmd>TodoClose<CR>", silent)
nnoremap("<leader>ol", "<Cmd>TodoOpenFileList<CR>", silent)
nnoremap("<leader>db", "<Cmd>DBUIToggle<CR>", silent)
nnoremap("<leader>h", "<Cmd>HexToggle<CR>", silent)
nnoremap("<leader>l", "<Cmd>CloakToggle<CR>", silent)

for i = 1, 10 do
  nnoremap("<leader>o" .. i % 10, "<Cmd>TodoOpenIndex " .. i .. "<CR>", silent)
end
