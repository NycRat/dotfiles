local lsp = require("lsp-zero").preset({})
local Remap = require("nycrat.keymap")
local inoremap = Remap.inoremap
local nnoremap = Remap.nnoremap
local xnoremap = Remap.xnoremap

lsp.on_attach(function(client, bufnr)
    -- lsp.default_keymaps({ buffer = bufnr })
    local opts = {buffer = bufnr, silent = true}

    nnoremap("<leader>.", function() vim.lsp.buf.code_action() end, opts)
    nnoremap("<leader>rn", function() vim.lsp.buf.rename() end, opts)
    nnoremap("<leader>fi", function() vim.lsp.buf.implementation() end, opts)
    nnoremap("<leader>fr", function() vim.lsp.buf.references() end, opts)
    nnoremap("<leader>ff", function() vim.lsp.buf.definition() end, opts)
    nnoremap("<leader>fF", function() vim.lsp.buf.declaration() end, opts)
    nnoremap("K", function() vim.lsp.buf.hover() end, opts)
    -- inoremap("<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    inoremap("<C-j>", function() vim.lsp.buf.signature_help() end, opts)

    nnoremap("<leader>m", function()
        vim.lsp.buf.format({async = false, timeout_ms = 10000})
    end, opts)

    xnoremap("<leader>m", function()
        vim.lsp.buf.format({async = false, timeout_ms = 10000})
    end, opts)
end)

lsp.setup()

require("mason-nvim-dap").setup({
    ensure_installed = {"python", "cpp"},
    automatic_installation = true,
    handlers = {
        function(config) require("mason-nvim-dap").default_setup(config) end
    }
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
require("cmp").setup({
    snippet = {
        expand = function(args) require("luasnip").lsp_expand(args.body) end
    },
    sources = {{name = "nvim_lsp"}, {name = "luasnip"}}
})
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

local null_ls = require("null-ls")
local null_opts = lsp.build_options("null-ls", {})

local txt_formatter = {
    method = null_ls.methods.FORMATTING,
    filetypes = {"txt", "text"},
    generator = null_ls.formatter({
        command = "txt-format",
        args = {"$FILENAME"},
        to_stdin = true,
        from_stderr = true
    })
}

null_ls.setup({
    on_attach = function(client, bufnr) null_opts.on_attach(client, bufnr) end,
    sources = {txt_formatter}
})

require("mason-null-ls").setup({
    ensure_installed = nil,
    automatic_installation = false,
    handlers = {}
})
