return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    transparent_background = true,
    flavour = "mocha",
    dim_inactive = {
      enabled = false,
    },
    float = {
      transparent = true,
      solid = false,
    },
    integrations = {
      noice = true,
      blink_cmp = {
        style = "bordered",
      },
      harpoon = true,
    },
  },
}
