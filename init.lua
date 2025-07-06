-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- NOTE: CUSTOM MACROS
local esc = vim.api.nvim_replace_termcodes("<ESC>", true, true, true)

vim.fn.setreg("p", '"9yOconsole.log("Dhavalp ' .. esc .. '"9pa:' .. esc .. "ei, " .. esc .. '"9pA;' .. esc .. "")
-- NOTE: END
