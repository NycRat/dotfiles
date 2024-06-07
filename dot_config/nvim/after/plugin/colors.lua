require("rose-pine").setup({
  dim_inactive_windows = false,
  extend_background_behind_borders = true,

  enable = {
    terminal = true,
    legacy_highlights = true,
    migrations = true,
  },

  styles = {
    bold = true,
    italic = true,
    transparency = true,
  },

  groups = {},

  highlight_groups = {
    TelescopeBorder = { fg = "highlight_high", bg = "none" },
    TelescopeNormal = { bg = "none" },
    TelescopePromptNormal = { bg = "base" },
    TelescopeResultsNormal = { fg = "subtle", bg = "none" },
    TelescopeSelection = { fg = "text", bg = "base" },
    TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
  },

  before_highlight = function(group, highlight, palette) end,
})

vim.cmd([[colorscheme rose-pine]])
