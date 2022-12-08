vim.g["goyo_width"] = 90

vim.api.nvim_command([[
  function! s:goyo_enter()
    if executable('tmux') && strlen($TMUX)
      silent !tmux set status off
      silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    endif
    set noshowmode
    set noshowcmd
    set scrolloff=999
    lua require('lualine').hide()

    set number
    set relativenumber
    set numberwidth=4

    " ...
  endfunction
]])

vim.api.nvim_command([[
  function! s:goyo_leave()
    if executable('tmux') && strlen($TMUX)
      silent !tmux set status on
      silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    endif
    " set showmode
    " highlight LineNr guifg=#d8d0cc
    set showcmd
    set scrolloff=10
    lua require('lualine').hide({unhide=true})

    " set nonumber

    " ...
  endfunction
]])

vim.api.nvim_command([[
  autocmd! User GoyoEnter nested call <SID>goyo_enter()
  autocmd! User GoyoLeave nested call <SID>goyo_leave()
]])
