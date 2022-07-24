require('options')
require('keymaps')
require('plugins')
require('plugin_misc_config')
require('telescope-config')
require('coc-config')
require('colors')
require('lualine').setup()

require('nvim-treesitter.configs').setup {
  -- ensure_installed = "maintained", -- idk why error
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
} 

