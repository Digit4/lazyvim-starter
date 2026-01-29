return {
  "nvim-mini/mini.surround",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("mini.surround").setup({
      mappings = {
        add = "gsa", -- Add surrounding (like 'gsiw(')
        delete = "gsd", -- Delete surrounding
        replace = "gsr", -- Replace surrounding
        find = "gsf", -- Optional: find to the right
        find_left = "gsF", -- Optional: find to the left
        highlight = "gsh", -- Optional: highlight surrounding
        update_n_lines = "gsn", -- Optional: adjust search scope
      },
    })
  end,
}
