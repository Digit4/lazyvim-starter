-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local snipe = require("snipe")
local harpoon = require("harpoon")
local telescope_builtin = require("telescope.builtin")

local map = vim.keymap.set
local del = vim.keymap.del

map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")
map("i", "<A-CR>", "<End><CR>", { desc = "C-CR moves the cursor to new line" })

harpoon:setup()

map("n", "<leader>a", function()
  harpoon:list():add()
end)
map("n", "<C-o>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

map("n", "<leader>1", function()
  harpoon:list():select(1)
end)
map("n", "<leader>2", function()
  harpoon:list():select(2)
end)
map("n", "<leader>3", function()
  harpoon:list():select(3)
end)
map("n", "<leader>4", function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
map("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
map("n", "<C-S-N>", function()
  harpoon:list():next()
end)
