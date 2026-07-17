 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#24273a',
    base01 = '#363a4f',
    base02 = '#3e435b',
    base03 = '#696f91',
    base04 = '#a5adcb',
    base05 = '#cad3f5',
    base06 = '#cad3f5',
    base07 = '#cad3f5',
    base08 = '#ed8796',
    base09 = '#8bd5ca',
    base0A = '#f5a97f',
    base0B = '#f5bde6',
    base0C = '#96e9dc',
    base0D = '#ee90d5',
    base0E = '#f6b089',
    base0F = '#b70b24',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#cad3f5',          bg = '#24273a' })
  hi('TelescopeBorder',         { fg = '#696f91',             bg = '#24273a' })
  hi('TelescopePromptNormal',   { fg = '#cad3f5',          bg = '#24273a' })
  hi('TelescopePromptBorder',   { fg = '#696f91',             bg = '#24273a' })
  hi('TelescopePromptPrefix',   { fg = '#f5bde6',             bg = '#24273a' })
  hi('TelescopePromptCounter',  { fg = '#a5adcb',  bg = '#24273a' })
  hi('TelescopePromptTitle',    { fg = '#24273a',             bg = '#f5bde6' })
  hi('TelescopePreviewTitle',   { fg = '#24273a',             bg = '#f5a97f' })
  hi('TelescopeResultsTitle',   { fg = '#24273a',             bg = '#8bd5ca' })
  hi('TelescopeSelection',      { fg = '#cad3f5',          bg = '#3e435b' })
  hi('TelescopeSelectionCaret', { fg = '#f5bde6',             bg = '#3e435b' })
  hi('TelescopeMatching',       { fg = '#f5bde6',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
