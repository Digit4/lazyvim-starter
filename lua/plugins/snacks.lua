local YADM_MODE = os.getenv("GIT_WORK_TREE") == vim.fn.getcwd()
print(YADM_MODE)
return {
  "snacks.nvim",
  opts = {
    scroll = { enabled = false },
    scratch = {
      ft = "markdown",
    },
    explorer = {
      replace_netrw = true,
    },
    picker = {
      sources = {
        explorer = {
          git_status = true,
          hidden = YADM_MODE,
          ignored = YADM_MODE,
          untracked = not YADM_MODE,
        },
      },
    },
  },
}
