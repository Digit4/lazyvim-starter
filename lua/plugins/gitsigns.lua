return {
  "lewis6991/gitsigns.nvim",
  opts = {
    attach_to_untracked = false,
    current_line_blame = true,
    base = os.getenv("GIT_DIR"),
  },
}
