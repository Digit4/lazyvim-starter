-- NOTE: CUSTOM MACROS
local esc = vim.api.nvim_replace_termcodes("<ESC>", true, true, true)

vim.fn.setreg("p", '"myOconsole.log("digit4 ' .. esc .. '"mpa:' .. esc .. "ei, " .. esc .. '"mpA;' .. esc .. "")
vim.fn.setreg("f", "gsa)hi")
-- NOTE: END
