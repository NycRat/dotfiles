local nnoremap = require("nycrat.keymap").nnoremap

local silent = {silent = true}

nnoremap("<F5>", function() require("dap").continue() end, silent)
nnoremap("<F10>", function() require("dap").step_over() end, silent)
nnoremap("<F11>", function() require("dap").step_into() end, silent)
nnoremap("<F12>", function() require("dap").step_out() end, silent)
nnoremap("<leader>dk", function() require("dap").toggle_breakpoint() end, silent)
nnoremap("<leader>dm", function()
  require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end, silent)
nnoremap("<leader>dl", function()
  require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
end, silent)

nnoremap("<leader>du", function() require("dapui").toggle() end)
