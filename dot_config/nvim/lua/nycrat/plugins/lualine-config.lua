local function getWords()
  if vim.fn.wordcount().visual_words == 1 then
    return "1 word"
  elseif not (vim.fn.wordcount().visual_words == nil) then
    return tostring(vim.fn.wordcount().visual_words) .. " words"
  else
    if vim.fn.wordcount().words == 1 then
      return "1 word"
    else
      return tostring(vim.fn.wordcount().words) .. " words"
    end
  end
end

local function getGuiFont()
  return vim.api.nvim_get_option("guifont")
end

require('lualine').setup({
  -- sections = {lualine_c = {"filename", {getWords}}, lualine_x = {{getGuiFont}, 'filetype'}},
  sections = {lualine_c = {"filename", {getWords}}},
  options = {disabled_filetypes = {'NvimTree'}}
})
