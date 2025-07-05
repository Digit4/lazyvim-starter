return {
  "leath-dub/snipe.nvim",
  keys = {
    {
      "<leader><leader>",
      function()
        require("snipe").open_buffer_menu()
      end,
      desc = "Open Sniper buffer menu",
    },
  },
  opts = {},
}
