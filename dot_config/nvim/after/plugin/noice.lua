local notify = require("notify")
notify.setup({ fps = 120, render = "minimal", timeout = 500 })

require("noice").setup({
  cmdline = {
    format = {
      search_and_replace = {
        kind = "replace",
        pattern = "^:%%?s/",
        icon = " ",
        lang = "regex",
      },
      search_and_replace_range = {
        kind = "replace",
        pattern = "^:'<,'>%%?s/",
        icon = " ",
        lang = "regex",
      },
    },
  },
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  presets = {
    long_message_to_split = true,
    lsp_doc_border = true,
  },
  throttle = 1000 / 120,
  routes = {
    {
      filter = { event = "msg_show", kind = "", find = "written" },
      opts = { skip = true },
    },
  },
  views = {
    cmdline_popup = {
      position = { row = vim.o.lines * 0.32, col = "50%" },
      size = { width = 60, height = "auto" },
    },
    popupmenu = {
      position = { row = vim.o.lines * 0.32 + 3, col = "50%" },
      size = { width = 60, height = 10 },
      border = { style = "rounded", padding = { 0, 1 } },
      win_options = {
        winhighlight = {
          Normal = "Normal",
          FloatBorder = "DiagnosticInfo",
        },
      },
    },
  },
})
