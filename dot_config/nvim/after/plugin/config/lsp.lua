local lsp = require("lsp-zero").preset({})
local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local xnoremap = Remap.xnoremap

lsp.on_attach(function(client, bufnr)
	-- lsp.default_keymaps({ buffer = bufnr })
	local opts = { buffer = bufnr, silent = true }

	nnoremap("<leader>.", "<Cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	nnoremap("<leader>,", "<Cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	nnoremap("<leader>rn", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
	nnoremap("<leader>fi", "<Cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	nnoremap("<leader>fr", "<Cmd>lua vim.lsp.buf.references()<CR>", opts)
	nnoremap("<leader>ff", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
	nnoremap("<leader>fF", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	nnoremap("K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)

	nnoremap("<leader>m", function()
		vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
	end, opts)

	xnoremap("<leader>m", function()
		vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
	end, opts)
end)

lsp.setup()

require("mason-nvim-dap").setup({
	ensure_installed = { "python" },
	automatic_installation = true,
	handlers = {
		function(config)
			require("mason-nvim-dap").default_setup(config)
		end,
	},
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

local null_ls = require("null-ls")
local null_opts = lsp.build_options("null-ls", {})

null_ls.setup({
	on_attach = function(client, bufnr)
		null_opts.on_attach(client, bufnr)
	end,
	sources = {},
})

require("mason-null-ls").setup({
	ensure_installed = nil,
	automatic_installation = false,
	handlers = {},
})
