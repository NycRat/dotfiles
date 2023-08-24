require("font-swap").setup({
	fonts = {
		"MesloLGS NF:h18", -- "Fixedsys Excelsior 3.01:h22",
		"FixedsysExcelsiorIIIb Nerd Font:h22",
		"SyneMono Nerd Font:h20",
		"JetBrainsMono Nerd Font Mono:h18",
		"FantasqueSansMono Nerd Font Mono:h21",
		"OperatorMono Nerd Font:h20",
	},
})
vim.g["vcoolor_lowercase"] = true

vim.g["clang_format#detect_style_file)"] = 1

vim.g["indentLine_fileTypeExclude"] = { "dashboard" }

require("nvim-treesitter.configs").setup({
	context_commentstring = { enable = true },
	highlight = { enable = true, additional_vim_regex_highlighting = false },
	indent = {
		enable = true,
		-- disable = { "cpp", "typescript", "typescriptreact", "rust" },
	},
	autotag = {
		enable = true,
	},
})

require("ccc").setup()
require("spectre").setup()
require("nvim-autopairs").setup()
require("nvim-ts-autotag").setup()
