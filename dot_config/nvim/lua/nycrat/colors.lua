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


vim.g.neon_style = "doom"
vim.g.neon_italic_keyword = true
vim.g.neon_italic_boolean = true
vim.g.neon_italic_function = true
vim.g.neon_italic_variable = true
vim.g.neon_bold = true
-- vim.g.neon_transparent = true

vim.cmd[[colorscheme tokyonight-night]]


-- contrast in line numbers
vim.cmd[[highlight LineNr guifg=#d8d0cc]]
-- vim.cmd[[highlight LineNr guifg=#2c2c2c]]
