local M = {}

local numFonts = 5

local fonts = {
  "MesloLGS NF:h18", "Fixedsys Excelsior 3.01:h22",
  "JetBrainsMono Nerd Font Mono:h18", "FantasqueSansMono Nerd Font Mono:h21",
  "Operator Mono:h20"
}

M.fontIncrement = function()
  local selectedIndex = 1
  local curFont = vim.api.nvim_get_option("guifont")
  for i, font in pairs(fonts) do
    if (curFont == font) then
      selectedIndex = i + 1
      break
    end
  end
  if (selectedIndex > numFonts) then selectedIndex = 1 end
  vim.opt["guifont"] = fonts[selectedIndex]
end

M.fontDecrement = function()
  local selectedIndex = numFonts
  local curFont = vim.api.nvim_get_option("guifont")
  for i, font in pairs(fonts) do
    if (curFont == font) then
      selectedIndex = i - 1
      break
    end
  end
  if (selectedIndex <= 0) then selectedIndex = numFonts end
  vim.opt["guifont"] = fonts[selectedIndex]
end

return M
