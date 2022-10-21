require("packer").startup(function()
  use("wbthomason/packer.nvim")
  use("nvim-lua/plenary.nvim")
  use("tpope/vim-repeat")

  -- use("~/personal/repositories/MISC/todo.nvim")
  use("nycrat/todo.nvim")

  -- easier coding
  use({"neoclide/coc.nvim", branch = "release"})
  use({"prettier/vim-prettier", run = "yarn install"})
  use("numToStr/Comment.nvim")
  use("jiangmiao/auto-pairs")
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("MaxMEllon/vim-jsx-pretty")
  use("rhysd/vim-clang-format")
  use("sbdchd/neoformat")
  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
  use("nvim-treesitter/nvim-treesitter-context")
  use("ggandor/leap.nvim")
  use({
    "kylechui/nvim-surround",
    tag = "*",
    config = function() require("nvim-surround").setup({}) end
  })

  -- navigation
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons' -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use("ThePrimeagen/git-worktree.nvim")
  use("ryanoasis/vim-devicons")
  use("nvim-telescope/telescope.nvim")
  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make"})
  use("ThePrimeagen/harpoon")

  -- git
  use("kdheepak/lazygit.nvim")
  use("airblade/vim-gitgutter")
  use({"ldelossa/gh.nvim", requires = {{"ldelossa/litee.nvim"}}})

  -- writing
  use("junegunn/goyo.vim")
  use("preservim/vim-pencil")

  -- misc
  use("ThePrimeagen/vim-be-good")
  use({
    "ktunprasert/gui-font-resize.nvim",
    config = function() require("gui-font-resize").setup() end
  })

  -- use("KabbAmine/vCoolor.vim")
  use("mbbill/undotree")
  use({
    "nvim-lualine/lualine.nvim",
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
  })

  use("lukas-reineke/indent-blankline.nvim")
  use("lewis6991/impatient.nvim")
  -- use("norcalli/nvim-colorizer.lua")
  use("uga-rosa/ccc.nvim")
  use("lewis6991/spellsitter.nvim",
      {config = function() require("spellsitter").setup() end})
  use("p00f/nvim-ts-rainbow")
  use("nvim-pack/nvim-spectre")

  -- color themes
  use("catppuccin/nvim")
  use("ellisonleao/gruvbox.nvim")
  use("folke/tokyonight.nvim")
  -- use({"rose-pine/neovim', as = 'rose-pine"})
  use({"~/personal/repositories/MISC/rose-pine", as = "rose-pine"})
  -- use({"nycrat/rose-pine", as = "rose-pine"})
  use("Everblush/everblush.nvim")
end)

require('nycrat.plugins.misc-config')
