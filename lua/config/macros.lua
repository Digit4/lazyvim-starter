-- NOTE: CUSTOM MACROS
local esc = vim.api.nvim_replace_termcodes("<ESC>", true, true, true)

vim.fn.setreg("p", '"9yOconsole.log("digit4 ' .. esc .. '"9pa:' .. esc .. "ei, " .. esc .. '"9pA;' .. esc .. "")
vim.fn.setreg("p", "gsa)hi")
-- NOTE: END
