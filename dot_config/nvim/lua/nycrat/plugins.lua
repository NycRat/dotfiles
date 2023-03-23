require("packer").startup(function()
  use("wbthomason/packer.nvim")
  use("nvim-lua/plenary.nvim")
  use("tpope/vim-repeat")
  use("ryanoasis/vim-devicons")
  use("nvim-tree/nvim-web-devicons")

  use("nycrat/todo.nvim")
  use("nycrat/gui-fonts.nvim")

  -- easier coding
  use({"neoclide/coc.nvim", branch = "release"})
  use("numToStr/Comment.nvim")
  -- use("jiangmiao/auto-pairs")
  use("windwp/nvim-autopairs")
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("MaxMEllon/vim-jsx-pretty")
  use("rhysd/vim-clang-format")
  use("sbdchd/neoformat")
  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
  use("nvim-treesitter/nvim-treesitter-context")
  use("nvim-treesitter/playground")
  -- use("ggandor/leap.nvim")
  use({
    "kylechui/nvim-surround",
    tag = "*",
    config = function() require("nvim-surround").setup({}) end
  })

  -- navigation
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {"nvim-tree/nvim-web-devicons"},
    tag = "nightly" -- optional, updated every week. (see issue #1193)
  }
  use("ThePrimeagen/git-worktree.nvim")
  use("nvim-telescope/telescope.nvim")
  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make"})
  use("fannheyward/telescope-coc.nvim")
  use("ThePrimeagen/harpoon")

  -- git
  use("kdheepak/lazygit.nvim")
  use("airblade/vim-gitgutter")
  use({"ldelossa/gh.nvim", requires = {{"ldelossa/litee.nvim"}}})

  -- Debugging
  use("mfussenegger/nvim-dap")
  use("rcarriga/nvim-dap-ui")
  use("theHamsta/nvim-dap-virtual-text")
  use("nvim-telescope/telescope-dap.nvim")

  use("mfussenegger/nvim-dap-python")

  -- writing
  use("junegunn/goyo.vim")
  use("preservim/vim-pencil")
  use({
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = {"markdown"} end,
    ft = {"markdown"}
  })

  -- misc
  use("ThePrimeagen/vim-be-good")
  use("Eandrju/cellular-automaton.nvim")
  use("jbyuki/quickmath.nvim")

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

  -- use("lewis6991/spellsitter.nvim",
  --     {config = function() require("spellsitter").setup() end})
  use("p00f/nvim-ts-rainbow")
  use("nvim-pack/nvim-spectre")

  use("xiyaowong/nvim-transparent")

  use({
    "folke/noice.nvim",
    requires = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"}
  })

  -- color themes
  -- use({"nycrat/rose-pine", as = "rose-pine"})
  use("~/personal/repositories/MISC/rose-pine")
end)

-- require("nycrat.plugins.misc-config")
