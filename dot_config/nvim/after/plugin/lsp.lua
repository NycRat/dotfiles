local lsp = require("lsp-zero").preset({})
local Remap = require("nycrat.keymap")
local inoremap = Remap.inoremap
local nnoremap = Remap.nnoremap

lsp.on_attach(function(client, bufnr)
  -- lsp.default_keymaps({ buffer = bufnr })
  local opts = { buffer = bufnr, silent = true }

  nnoremap("<leader>.", vim.lsp.buf.code_action, opts)
  nnoremap("<leader>rn", vim.lsp.buf.rename, opts)
  nnoremap("<leader>fi", vim.lsp.buf.implementation, opts)
  nnoremap("<leader>fr", vim.lsp.buf.references, opts)
  nnoremap("<leader>ff", vim.lsp.buf.definition, opts)
  nnoremap("<leader>fF", vim.lsp.buf.declaration, opts)
  nnoremap("K", vim.lsp.buf.hover, opts)
  -- inoremap("<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  inoremap("<C-j>", vim.lsp.buf.signature_help, opts)
  nnoremap("<leader>,", vim.diagnostic.setloclist)
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
    ["clangd"] = { "cpp", "c" },
    ["null-ls"] = {
      "lua",
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
      "tex",
      "plaintex",
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

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

-- FIX THE THINGY WITH THE WARNING
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

capabilities.offsetEncoding = "utf-8"
capabilities.offset_encoding = "utf-8"
capabilities.clang = {}
capabilities.clang.offsetEncoding = "utf-8"
capabilities.clang.offset_encoding = "utf-8"
lspconfig.clangd.setup({ capabilities = capabilities })
-- AAAAAA

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

local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<leader>rt", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>rtt", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
