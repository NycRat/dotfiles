-- require('nycrat.plugins.ccc-config')
-- require('nycrat.plugins.comment-config')
-- require('nycrat.plugins.goyo-config')
-- require('nycrat.plugins.lualine-config')
-- require('nycrat.plugins.neovide-config')
-- require('nycrat.plugins.telescope-config')
-- require('nycrat.plugins.nvimtree-config')
-- require('nycrat.plugins.gh-config')

require("font-swap").setup({
  fonts = {
    "MesloLGS NF:h18", -- "Fixedsys Excelsior 3.01:h22",
    "FixedsysExcelsiorIIIb Nerd Font:h22", "SyneMono Nerd Font:h20",
    "JetBrainsMono Nerd Font Mono:h18", "FantasqueSansMono Nerd Font Mono:h21",
    "OperatorMono Nerd Font:h20"
  }
})

vim.g["vcoolor_lowercase"] = true

vim.g["clang_format#detect_style_file)"] = 1

vim.g["neoformat_lua_luaformat"] = {
  exe = "lua-format",
  args = {"--indent-width=2"}
}

vim.g["neoformat_text_txtformat"] = {exe = "txt-format", args = {}}

vim.g["neoformat_enabled_lua"] = {"luaformat"}
vim.g["neoformat_enabled_text"] = {"txtformat"}

vim.g["indentLine_fileTypeExclude"] = {"dashboard"}

-- require('leap').add_default_mappings()

require("nvim-treesitter.configs").setup {
  context_commentstring = {enable = true},
  highlight = {enable = true, disable = {"markdown"}},
  indent = {
    enable = true,
    disable = {"cpp", "typescript", "typescriptreact", "rust"}
  },
  -- ...
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}

require("ccc").setup()

require('spectre').setup()
