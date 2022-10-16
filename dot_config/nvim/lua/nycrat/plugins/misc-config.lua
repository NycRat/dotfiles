require('nycrat.plugins.colorizer-config')
require('nycrat.plugins.comment-config')
require('nycrat.plugins.goyo-config')
require('nycrat.plugins.lualine-config')
require('nycrat.plugins.neovide-config')
require('nycrat.plugins.telescope-config')
require('nycrat.plugins.nvimtree-config')

vim.g["vcoolor_lowercase"] = true

vim.g["clang_format#detect_style_file)"] = 1

vim.g["indentLine_fileTypeExclude"] = { "dashboard" }

require('leap').add_default_mappings()

require("nvim-treesitter.configs").setup {
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true,
    disable = {"cpp", "typescript", "typescriptreact", "rust"}
  },
  -- ...
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}

-- vim.g["neoformat_rust_rustfmt"] = { args = {"--edition 2021"} }
