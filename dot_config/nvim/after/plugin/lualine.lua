local function getWords()
  if vim.fn.getfsize(vim.fn.expand("%")) > 200000 then
    return ""
  end

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

require("lualine").setup({
  sections = {
    lualine_c = { "filename", { getWords } },
    lualine_x = {
      {
        require("noice").api.statusline.mode.get,
        cond = require("noice").api.statusline.mode.has,
        color = { fg = "#aaf7f0" },
      },
      "filetype",
    },
  },
  options = { disabled_filetypes = { "NvimTree" } },
})
