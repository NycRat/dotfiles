local dap = require("dap")

require("dapui").setup({
  layouts = {
    {
      elements = {
        {id = "scopes", size = 0.5}, {id = "breakpoints", size = 0.15},
        {id = "stacks", size = 0.2}, {id = "watches", size = 0.15}
      },
      size = 0.3,
      position = "left"
    }, {elements = {"repl", "console"}, size = 0.3, position = "bottom"}
  },
})

require("nvim-dap-virtual-text").setup()

require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")

dap.adapters.lldb = {
  type = "executable",
  command = "/opt/homebrew/opt/llvm/bin/lldb-vscode",
  name = "lldb"
}

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "lldb",
    request = "launch",
    program = function()
      local filetype = vim.bo.filetype

      if (filetype == "cpp" or filetype == "c") then
        local file = vim.fn.expand("%:p:r") .. ".o"
        return vim.fn.input("Path to executable: ", file, "file")
      end

      if (filetype == "rust") then
        return vim.fn.input("Path to executable: ",
                            vim.loop.cwd() .. "/target/debug/", "file")
      end

      return vim.fn.input("Path to executable: ", vim.loop.cwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = true,
    args = {},
    runInTerminal = true
  }
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
