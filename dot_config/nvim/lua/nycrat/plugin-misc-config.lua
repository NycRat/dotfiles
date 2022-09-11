vim.g["NERDTreeWinPos"] = "right"
vim.g["NERDTreeWinSize"] = 40
vim.g["NERDTreeShowHidden"] = true
vim.g["NERDTreeIgnore"] = {'.DS_Store$' }
vim.g["NERDTreeMinimalUI"] = true

-- Start NERDTree when Vim starts with a directory argument.
-- vim.cmd[[autocmd StdinReadPre * let s:std_in=1]]
-- vim.cmd[[autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif]]

vim.g["vcoolor_lowercase"] = true

require('nvim-treesitter.configs').setup {
  -- ensure_installed = "maintained", -- idk why error
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true,
    disable = {"cpp"}
  }
}

vim.g["clang_format#detect_style_file)"] = 1

vim.g["indentLine_fileTypeExclude"] = { "dashboard" }

require'colorizer'.setup()
require 'colorizer'.setup({}, {
  RRGGBBAA = true;        -- #RRGGBBAA hex codes
  rgb_fn   = true;        -- CSS rgb() and rgba() functions
  hsl_fn   = true;        -- CSS hsl() and hsla() functions
  css      = true;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
  css_fn   = true;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
})

require('peepsight').setup({
  "function_declaration",
  "method_declaration",
  "func_literal",

  -- typescript
  "arrow_function",
  "function_declaration",
  "generator_function_declaration"
})

require("nvim-treesitter.configs").setup {
  highlight = {
      -- ...
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
