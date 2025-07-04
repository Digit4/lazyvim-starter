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
map("n", "<Tab>", ":bnext<CR>", { silent = true, noremap = true })
map("n", "<S-Tab>", ":bprev<CR>", { silent = true, noremap = true })

harpoon:setup()

map("n", "<leader>a", function()
  harpoon:list():add()
end)

-- Toggle previous & next buffers stored within Harpoon list
map("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
map("n", "<C-S-N>", function()
  harpoon:list():next()
end)
