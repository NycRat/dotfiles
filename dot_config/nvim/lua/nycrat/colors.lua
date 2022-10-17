-- setup must be called before loading the colorscheme
-- Default options:
-- require("gruvbox").setup({
--   undercurl = true,
--   underline = true,
--   bold = true,
--   italic = true,
--   strikethrough = true,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = true, -- invert background for search, diffs, statuslines and errors
--   contrast = "soft", -- can be "hard", "soft" or empty string
--   overrides = {},
-- })
-- require("rose-pine").setup({
--   dark_variant = "main"
-- })
-- vim.g.ayucolor = "light"
-- vim.g.catppuccin_flavour = "mocha"
require("tokyonight").setup({
    style = "night"
    -- transparent = true,
})

vim.cmd [[colorscheme tokyonight]]

-- contrast in line numbers
vim.cmd [[highlight LineNr guifg=#beb8b8]]
-- vim.cmd[[highlight LineNr guifg=#2c2c2c]]
