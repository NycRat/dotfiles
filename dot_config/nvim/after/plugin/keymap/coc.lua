local Remap = require("nycrat.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

nnoremap("<leader>.", "<Plug>(coc-codeaction)", {silent = true})
nnoremap("<leader>rn", "<Plug>(coc-rename)", {silent = true})
nnoremap("<leader>fi", "<Plug>(coc-implementation)", {silent = true})
nnoremap("<leader>fr", "<Plug>(coc-references)", {silent = true})
nnoremap("<leader>ff", "<Plug>(coc-definition)", {silent = true})

nnoremap("K", "<Cmd>call CocActionAsync('doHover')<CR>", {silent = true})

inoremap("<C-Space>", "coc#refresh()", {silent = true, expr = true})

-- Autocomplete
-- TODO make the tabbing fill in first option
-- inoremap("<TAB>", "coc#pum#visible() ? coc#pum#next(1) : '<TAB>'", { expr = true })
-- inoremap("<S-TAB>", "coc#pum#visible() ? coc#pum#prev(1) : '<C-h>'", { expr = true })
-- inoremap("<CR>", "coc#pum#visible() ? coc#_select_confirm() : '<CR>'", { expr = true })

-- idk why neovim 8 just broke this

vim.cmd [[
inoremap <silent><expr> <TAB>
\ coc#pum#visible() ? coc#pum#next(1) :
\ "\<Tab>" 

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]]
