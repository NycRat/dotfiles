require('basics')
require('telescope-config')
require('coc-config')
require('lualine').setup()

require('nvim-treesitter.configs').setup {
  -- ensure_installed = "maintained", -- idk why error
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true,
    disable = { "lua" }
  },
  indent = {
    enable = true
  }
} 

return require('packer').startup(
function()

  use 'wbthomason/packer.nvim'
  
  -- easier coding
  use {'neoclide/coc.nvim', branch = 'release'}
  use {'prettier/vim-prettier', run = 'yarn install'}
  use 'rhysd/vim-clang-format'
  use 'tpope/vim-commentary'
  use 'jiangmiao/auto-pairs'
  use 'github/copilot.vim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'MaxMEllon/vim-jsx-pretty'

  -- navigation
  use 'preservim/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin' 
  use 'tiagofumo/vim-nerdtree-syntax-highlight' 
  use 'ryanoasis/vim-devicons'

  -- git
  use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'

  -- misc
  use 'KabbAmine/vCoolor.vim'
  use 'nvim-treesitter/nvim-treesitter' 
  use 'mbbill/undotree'

  -- themes
  use 'ayu-theme/ayu-vim'
  use 'morhetz/gruvbox'
  use 'altercation/vim-colors-solarized'
  use 'folke/tokyonight.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }

end)
