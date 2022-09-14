-- local function getWords()
--   return vim.fn.wordcount().words
-- end
local function getWords()
  -- if vim.bo.filetype == "md" or vim.bo.filetype == "txt" or vim.bo.filetype == "markdown" then
    if vim.fn.wordcount().visual_words == 1 then
      return tostring(vim.fn.wordcount().visual_words) .. " word"
    elseif not (vim.fn.wordcount().visual_words == nil) then
      return tostring(vim.fn.wordcount().visual_words) .. " words"
    else
      return tostring(vim.fn.wordcount().words) .. " words"
    end
  -- else
  --   return ""
  -- end
end

require('lualine').setup({
  sections = {
    lualine_c = {
      "filename",
      { getWords }
    },
    lualine_x = {'filetype'},
  }
})
