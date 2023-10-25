local lsp = require("lsp-zero").preset({})
local Remap = require("nycrat.keymap")
local inoremap = Remap.inoremap
local nnoremap = Remap.nnoremap

lsp.on_attach(function(client, bufnr)
  -- lsp.default_keymaps({ buffer = bufnr })
  local opts = { buffer = bufnr, silent = true }

  nnoremap("<leader>.", function() vim.lsp.buf.code_action() end, opts)
  nnoremap("<leader>rn", function() vim.lsp.buf.rename() end, opts)
  nnoremap("<leader>fi", function() vim.lsp.buf.implementation() end, opts)
  nnoremap("<leader>fr", function() vim.lsp.buf.references() end, opts)
  nnoremap("<leader>ff", function() vim.lsp.buf.definition() end, opts)
  nnoremap("<leader>fF", function() vim.lsp.buf.declaration() end, opts)
  nnoremap("K", function() vim.lsp.buf.hover() end, opts)
  -- inoremap("<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  inoremap("<C-j>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.format_mapping("<leader>m", {
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ["rust_analyzer"] = { "rust" },
    ["gopls"] = { "go" },
    ["pylsp"] = { "python" },
    ["null-ls"] = {
      "lua",
      "c",
      "cpp",
      "json",
      "javascript",
      "typescript",
      "typescriptreact",
      "markdown",
      "css",
      "sass",
      "scss",
      "txt",
      "text",
      "html",
    },
  },
})

lsp.setup()

require("mason-nvim-dap").setup({
  ensure_installed = { "python", "cpp" },
  automatic_installation = true,
  handlers = {
    function(config) require("mason-nvim-dap").default_setup(config) end,
  },
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
require("cmp").setup({
  performance = {
    debounce = 0,
    throttle = 0,
    confirm_resolve_timeout = 0,
  },
  preselect = "Item",
  snippet = {
    expand = function(args) require("luasnip").lsp_expand(args.body) end,
  },
  sources = { { name = "nvim_lsp" }, { name = "luasnip" }, { name = "nvim_lua" } },
  view = {},
  window = {
    completion = {
      border = "rounded",
    },
    documentation = {
      border = "rounded",
    },
  },
})

local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

local null_ls = require("null-ls")
local null_opts = lsp.build_options("null-ls", {})

local txt_formatter = {
  method = null_ls.methods.FORMATTING,
  filetypes = { "txt", "text" },
  generator = null_ls.formatter({
    command = "txt-format",
    args = { "$FILENAME" },
    to_stdin = true,
    from_stderr = true,
  }),
}

null_ls.setup({
  on_attach = function(client, bufnr) null_opts.on_attach(client, bufnr) end,
  sources = { txt_formatter },
})

require("mason-null-ls").setup({
  ensure_installed = nil,
  automatic_installation = false,
  handlers = {},
})
