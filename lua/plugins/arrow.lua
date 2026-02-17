return {
  "otavioschwanck/arrow.nvim",
  enabled = false,
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
    -- or if using `mini.icons`
    -- { "echasnovski/mini.icons" },
  },
  opts = {
    show_icons = true,
    leader_key = "<leader><leader>", -- Recommended to be a single key
    buffer_leader_key = "<leader>bm", -- Per Buffer Mappings
  },
}
