-- setup must be called before loading the colorscheme
--
require("rose-pine").setup({
  dark_variant = "main"
})
-- vim.g.catppuccin_flavour = "mocha"
require("tokyonight").setup({
    style = "night"
    -- transparent = true,
})

-- vim.cmd [[colorscheme tokyonight]]
vim.cmd [[colorscheme rose-pine]]

-- contrast in line numbers
vim.cmd [[highlight LineNr guifg=#beb8b8]]
-- vim.cmd[[highlight LineNr guifg=#2c2c2c]]
