return {
  "Digit4/todofloating.nvim",
  config = function()
    require("todofloating").setup({
      target_file = "~/Notes/todo.md",
    })
  end,
}
