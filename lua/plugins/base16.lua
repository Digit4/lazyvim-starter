return {
  "RRethy/base16-nvim",
  config = function()
    local ok, matugen = pcall(require, "matugen")
    if ok then
      matugen.setup()
    end

    -- Comprehensive transparency list
    local transparent_groups = {
      -- Core UI
      "Normal",
      "NormalNC",
      "NormalFloat",
      "FloatBorder",
      "FloatTitle",
      "SignColumn",
      "LineNr",
      "CursorLineNr",
      "FoldColumn",
      "Folded",
      "EndOfBuffer",

      -- Status Line
      "StatusLine",
      "StatusLineNC",

      -- Telescope Specific
      "TelescopeNormal",
      "TelescopeBorder",
      "TelescopePromptNormal",
      "TelescopePromptBorder",
      "TelescopeResultsNormal",
      "TelescopeResultsBorder",
      "TelescopePreviewNormal",
      "TelescopePreviewBorder",

      -- Snacks / Sidebar backgrounds
      "SnacksNormal",
      "SnacksNormalNC",
      "SnacksBorder",
      "NormalSB",
      "SignColumnSB",
    }

    for _, group in ipairs(transparent_groups) do
      vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
    end
  end,
}
