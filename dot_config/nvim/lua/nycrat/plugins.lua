require('packer').startup(
function()

  use 'wbthomason/packer.nvim'
  
  -- easier coding
  use {'neoclide/coc.nvim', branch = 'release'}
  use {'prettier/vim-prettier', run = 'yarn install'}
  use 'numToStr/Comment.nvim'
  use 'jiangmiao/auto-pairs'
  use 'github/copilot.vim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'MaxMEllon/vim-jsx-pretty'
  use 'rhysd/vim-clang-format'

  -- navigation
  use 'preservim/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'ryanoasis/vim-devicons'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- git
  use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'

  -- misc
  use 'KabbAmine/vCoolor.vim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'mbbill/undotree'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'lukas-reineke/indent-blankline.nvim'
  use 'junegunn/rainbow_parentheses.vim'

  -- color themes
  use 'catppuccin/nvim'
  use 'ayu-theme/ayu-vim'
  use 'morhetz/gruvbox'
  use 'altercation/vim-colors-solarized'
  use 'folke/tokyonight.nvim'

end)
