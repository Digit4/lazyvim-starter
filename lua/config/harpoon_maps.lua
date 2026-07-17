local ok, harpoon = pcall(require, "harpoon")
if not ok then
  return
end
local ext_ok, harpoon_extensions = pcall(require, "harpoon.extensions")
if not ext_ok then
  return
end

harpoon:setup({
  default = {
    create_list_item = function(config, name)
      local Path = require("plenary.path")
      -- Get the full path
      local full_path = name or vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())

      -- Extract only the filename (":t" means tail/filename)
      local filename = vim.fn.fnamemodify(full_path, ":t")

      return {
        value = full_path, -- Still store the full path for jumping
        context = {
          name = filename, -- Use the filename for display
        },
      }
    end,
    -- Display only the filename in the menu
    display = function(list_item)
      return list_item.context.name
    end,
  },
})

harpoon:extend(harpoon_extensions.builtins.highlight_current_file())

local map = vim.keymap.set
-- local del = vim.keymap.del

-- map("n", "<leader>a", function()
--   harpoon:list():add()
-- end, { desc = "Add Harpoon file" })
map("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Add file to Harpoon list" })
map("n", "<leader>h", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Toggle Harpoon menu" })
map("n", "<leader>1", function()
  harpoon:list():select(1)
end, { desc = "Harpoon file 1" })
map("n", "<leader>2", function()
  harpoon:list():select(2)
end, { desc = "Harpoon file 2" })
map("n", "<leader>3", function()
  harpoon:list():select(3)
end, { desc = "Harpoon file 3" })
map("n", "<leader>4", function()
  harpoon:list():select(4)
end, { desc = "Harpoon file 4" })
map("n", "<leader>5", function()
  harpoon:list():select(5)
end, { desc = "Harpoon file 5" })

-- Toggle previous & next buffers stored within Harpoon list
map("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
map("n", "<C-S-N>", function()
  harpoon:list():next()
end)
