return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-l>"] = require("telescope.actions").preview_scrolling_right,
            ["<C-h>"] = require("telescope.actions").preview_scrolling_left,
          },
        },
      },
    },
  },
}
