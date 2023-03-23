local notify = require("notify")
notify.setup({fps = 120, render = "minimal", timeout = 500})

require("noice").setup({
  cmdline = {
    enabled = true,
    view = "cmdline_popup",
    opts = {},
    format = {
      cmdline = {pattern = "^:", icon = "", lang = "vim"},
      search_down = {
        kind = "search",
        pattern = "^/",
        icon = " ",
        lang = "regex"
      },
      search_up = {
        kind = "search",
        pattern = "^%?",
        icon = " ",
        lang = "regex"
      },
      bash = {pattern = "^:%s*!", icon = "$", lang = "bash"},
      lua = {pattern = "^:%s*lua%s+", icon = "", lang = "lua"},
      help = {pattern = "^:%s*he?l?p?%s+", icon = ""},
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
      input = {}
    }
  },
  commands = {
    history = {
      view = "split",
      opts = {enter = true, format = "details"},
      filter = {
        any = {
          {event = "notify"}, {error = true}, {warning = true},
          {event = "msg_show", kind = {""}}, {event = "lsp", kind = "message"}
        }
      }
    },

    last = {
      view = "popup",
      opts = {enter = true, format = "details"},
      filter = {
        any = {
          {event = "notify"}, {error = true}, {warning = true},
          {event = "msg_show", kind = {""}}, {event = "lsp", kind = "message"}
        }
      },
      filter_opts = {count = 1}
    },

    errors = {
      view = "popup",
      opts = {enter = true, format = "details"},
      filter = {error = true},
      filter_opts = {reverse = true}
    }
  },
  smart_move = {
    enabled = true,
    excluded_filetypes = {"cmp_menu", "cmp_docs", "notify"}
  },
  presets = {
    bottom_search = false,
    command_palette = false,
    long_message_to_split = true,
    inc_rename = false,
    lsp_doc_border = true
  },
  throttle = 1000 / 60,
  routes = {
    {
      filter = {event = "msg_show", kind = "", find = "written"},
      opts = {skip = true}
    }
  },
  views = {
    cmdline_popup = {
      position = {row = 15, col = "50%"},
      size = {width = 60, height = "auto"}
    },
    popupmenu = {
      relative = "editor",
      position = {row = 15 + 3, col = "50%"},
      size = {width = 60, height = 10},
      border = {style = "rounded", padding = {0, 1}},
      win_options = {
        winhighlight = {Normal = "Normal", FloatBorder = "DiagnosticInfo"}
      }
    }
  }
})
