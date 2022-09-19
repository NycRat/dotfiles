require("packer").startup(function()
  use "wbthomason/packer.nvim"
  use "nvim-lua/plenary.nvim"

  -- easier coding
  use {"neoclide/coc.nvim", branch = "release"}
  use {"prettier/vim-prettier", run = "yarn install"}
  use "numToStr/Comment.nvim"
  use "jiangmiao/auto-pairs"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "MaxMEllon/vim-jsx-pretty"
  use "rhysd/vim-clang-format"
  use "sbdchd/neoformat"
  use "tpope/vim-surround"
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use 'nvim-treesitter/nvim-treesitter-context'

  -- navigation
  use "preservim/nerdtree"
  use "Xuyuanp/nerdtree-git-plugin"
  use "ThePrimeagen/git-worktree.nvim"
  use "tiagofumo/vim-nerdtree-syntax-highlight"
  use "ryanoasis/vim-devicons"
  use "nvim-telescope/telescope.nvim"
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use "ThePrimeagen/harpoon" -- THIS PLUGIN JUST SO SLOW CURRENTLY

  -- git
  use "kdheepak/lazygit.nvim"
  use "airblade/vim-gitgutter"
  use {
    "ldelossa/gh.nvim",
    requires = { { "ldelossa/litee.nvim" } }
  }

  -- writing
  use "junegunn/goyo.vim"
  use "preservim/vim-pencil"

  -- misc
  use "ThePrimeagen/vim-be-good"
  use {
      "ktunprasert/gui-font-resize.nvim",
      config = function() require("gui-font-resize").setup() end,
  }
  use "KabbAmine/vCoolor.vim"
  use "mbbill/undotree"
  use {
    "nvim-lualine/lualine.nvim",
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
  }
  use "lukas-reineke/indent-blankline.nvim"
  use "lewis6991/impatient.nvim"
  use "norcalli/nvim-colorizer.lua"
  use {
    "lewis6991/spellsitter.nvim",
    config = function()
      require("spellsitter").setup()
    end
  }
  use "p00f/nvim-ts-rainbow"
  -- use "andweeb/presence.nvim"

  -- color themes
  use "catppuccin/nvim"
  use "ayu-theme/ayu-vim"
  use "sainnhe/gruvbox-material"
  use "ellisonleao/gruvbox.nvim"
  use "altercation/vim-colors-solarized"
  use "folke/tokyonight.nvim"

end)

require('nycrat.plugins.misc-config')
