-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.gd",
  callback = function()
    vim.bo.filetype = "gdscript"
  end,
})

-- -- Only trigger if we are in yadm mode (detected via env var)
-- if os.getenv("YADM_MODE") then
--   vim.api.nvim_create_autocmd("VimEnter", {
--     callback = function()
--       -- Force snacks explorer to show only git-tracked files if possible
--       -- Or jump straight into the git-files picker
--       require("snacks").picker.git_files()
--     end,
--   })
-- end
