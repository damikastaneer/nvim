local augroup = vim.api.nvim_create_augroup("DamiConfig", { clear = true })

-- transparency that matches terminal background
vim.api.nvim_create_autocmd("ColorScheme", {
  group = augroup,
  callback = function()
    local highlights = {
      "Normal",
      "NormalNC",
      "SignColumn",
      "EndOfBuffer",
      "LineNr",
      "FoldColumn",
      "VertSplit",
      "StatusLine",
      "StatusLineNC",
      "NormalFloat",
      "FloatBorder",
    }

    for _, group_name in ipairs(highlights) do
      vim.api.nvim_set_hl(0, group_name, { bg = "none", ctermbg = "none" })
    end
  end,
})

-- apply once on startup too
vim.api.nvim_create_autocmd("VimEnter", {
  group = augroup,
  callback = function()
    local highlights = {
      "Normal",
      "NormalNC",
      "SignColumn",
      "EndOfBuffer",
      "LineNr",
      "FoldColumn",
      "VertSplit",
      "StatusLine",
      "StatusLineNC",
      "NormalFloat",
      "FloatBorder",
    }

    for _, group_name in ipairs(highlights) do
      vim.api.nvim_set_hl(0, group_name, { bg = "none", ctermbg = "none" })
    end
  end,
})
