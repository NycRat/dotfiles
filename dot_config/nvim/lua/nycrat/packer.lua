require("packer").startup(function()
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim")
	use("tpope/vim-repeat")
	use("ryanoasis/vim-devicons")

	use("nycrat/todo.nvim")
	use("nycrat/gui-fonts.nvim")

	-- lsp
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
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
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	-- easier coding
	use("numToStr/Comment.nvim")
	use("windwp/nvim-autopairs")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-context")
	use("nvim-treesitter/playground")
	use({
		"kylechui/nvim-surround",
		tag = "*",
		config = function()
			require("nvim-surround").setup({})
		end,
	})

	-- navigation
	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})
	use("ThePrimeagen/harpoon")
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	-- git
	use("kdheepak/lazygit.nvim")
	use("airblade/vim-gitgutter")
	use({ "ldelossa/gh.nvim", requires = { { "ldelossa/litee.nvim" } } })
	use("ThePrimeagen/git-worktree.nvim")

	-- Debugging
	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use("theHamsta/nvim-dap-virtual-text")
	use("nvim-telescope/telescope-dap.nvim")

	-- writing
	use("junegunn/goyo.vim")
	use("preservim/vim-pencil")
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})

	-- misc
	use("glepnir/template.nvim")
	use("laytan/cloak.nvim")
	use("mbbill/undotree")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use("lukas-reineke/indent-blankline.nvim")
	use("uga-rosa/ccc.nvim")
	use("p00f/nvim-ts-rainbow")
	use("nvim-pack/nvim-spectre")
	use("xiyaowong/nvim-transparent")

	use({
		"folke/noice.nvim",
		requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
	})

	-- color themes
	-- use({"nycrat/rose-pine", as = "rose-pine"})
	use("~/personal/repositories/MISC/rose-pine")
end)
