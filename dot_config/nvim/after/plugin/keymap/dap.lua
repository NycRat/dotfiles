local nnoremap = require("nycrat.keymap").nnoremap
local dap = require("dap")
local dapui = require("dapui")

local silent = {silent = true}

nnoremap("<F2>", dap.terminate, silent)
nnoremap("<F5>", dap.continue, silent)
nnoremap("<F10>", dap.step_over, silent)
nnoremap("<F11>", dap.step_into, silent)
nnoremap("<F12>", dap.step_out, silent)

nnoremap("<leader>du", dapui.toggle, silent)
nnoremap("<leader>dj", function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: "), nil,
                     vim.fn.input("Log point message: "))
end, silent)
nnoremap("<leader>dk", dap.toggle_breakpoint, silent)
