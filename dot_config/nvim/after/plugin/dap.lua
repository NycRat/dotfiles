local nnoremap = require("nycrat.keymap").nnoremap
local dap = require("dap")
local dapui = require("dapui")

local silent = { silent = true }

nnoremap("<F2>", dap.terminate, silent)
nnoremap("<F5>", dap.continue, silent)
-- nnoremap("<F10>", dap.step_over, silent)
nnoremap("<F10>", dap.step_into, silent)
nnoremap("<F12>", dap.step_out, silent)

nnoremap("<leader>du", dapui.toggle, silent)
nnoremap(
  "<leader>dj",
  function() dap.set_breakpoint(vim.fn.input("Breakpoint condition: "), nil, vim.fn.input("Log point message: ")) end,
  silent
)
nnoremap("<leader>ddd", dap.clear_breakpoints, silent)
nnoremap("<leader>dk", dap.toggle_breakpoint, silent)

require("dapui").setup({
  mappings = { expand = { "o", "<2-LeftMouse>" }, open = "<CR>" },
  layouts = {
    {
      elements = {
        { id = "scopes", size = 0.5 },
        { id = "breakpoints", size = 0.15 },
        { id = "stacks", size = 0.2 },
        { id = "watches", size = 0.15 },
      },
      size = 0.3,
      position = "left",
    },
    { elements = { "repl", "console" }, size = 0.3, position = "bottom" },
  },
})

require("nvim-dap-virtual-text").setup()

-- require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")

dap.adapters.lldb = {
  type = "executable",
  command = "/opt/homebrew/opt/llvm/bin/lldb-vscode",
  name = "lldb",
}

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "lldb",
    request = "launch",
    program = function()
      local filetype = vim.bo.filetype

      local target_file = "No File Selected"

      if filetype == "cpp" or filetype == "c" then
        local file = vim.fn.expand("%:p:r") .. ".o"
        target_file = vim.fn.input("Path to executable: ", file, "file")
      end

      if filetype == "rust" then
        target_file = vim.fn.input("Path to executable: ", vim.loop.cwd() .. "/target/debug/", "file")
      end

      if target_file == "No File Selected" then
        target_file = vim.fn.input("Path to executable: ", vim.loop.cwd() .. "/", "file")
      end

      if target_file ~= nil and target_file ~= "" then
        return target_file
      else
        return "No File Selected"
      end
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = true,
    args = {},
    runInTerminal = true,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
