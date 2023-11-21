local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- lsp
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
      { "jay-babu/mason-nvim-dap.nvim" },

      -- null-ls
      { "jose-elias-alvarez/null-ls.nvim" },
      { "jay-babu/mason-null-ls.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip", version = "2.*" },
      { "honza/vim-snippets" },
    },
  },

  -- nice to have
  { "numToStr/Comment.nvim" },
  { "windwp/nvim-autopairs" },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-treesitter/nvim-treesitter-context" },
  { "ThePrimeagen/refactoring.nvim" },

  -- navigation
  {
    "kyazdani42/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  { "ThePrimeagen/harpoon" },
  { "nvim-telescope/telescope.nvim" },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  { "simrat39/symbols-outline.nvim" },

  -- git
  { "kdheepak/lazygit.nvim" },
  { "lewis6991/gitsigns.nvim" },
  { "pwntester/octo.nvim" },

  -- Debugging
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },
  { "theHamsta/nvim-dap-virtual-text" },
  { "nvim-telescope/telescope-dap.nvim" },

  -- misc
  { "kevinhwang91/nvim-bqf", ft = "qf" },
  { "mbbill/undotree" },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
  },
  -- { "toppair/peek.nvim", build = "deno task --quiet build:fast" },
  { "uga-rosa/ccc.nvim" },
  { "nvim-pack/nvim-spectre" },
  { "kylechui/nvim-surround" },
  { "nycrat/todo.nvim" },
  { "RaafatTurki/hex.nvim" },
  { "lervag/vimtex" },

  -- looks
  {
    "folke/noice.nvim",
    dependencies = { { "MunifTanjim/nui.nvim" }, { "rcarriga/nvim-notify" }, { "nvim-lua/plenary.nvim" } },
  },
  { "laytan/cloak.nvim" },
  { "nvim-lualine/lualine.nvim" },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { dir = "~/personal/repositories/MISC/rose-pine" },
  -- { "nycrat/rose-pine" },
})
