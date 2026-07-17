-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

vim.opt.scrolloff = 10

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"

vim.opt.autoindent = true
vim.opt.smartindent = true

local is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1

if is_windows then
  -- Only set this on Windows
  vim.g.python3_host_prog = "C:\\Users\\dhaval.atul.pantojee\\AppData\\Local\\Python\\bin\\python.exe"
else
  -- Optional: Set a different path for your Arch Linux setup if needed
  -- vim.g.python3_host_prog = "/usr/bin/python3"
end
