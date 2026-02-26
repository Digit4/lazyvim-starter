return {
  "stevearc/conform.nvim",
  opts = {
    -- log_level = vim.log.levels.DEBUG,
    default_format_opts = {
      timeout_ms = 10000,
      lsp_format = "never",
    },
    formatters_by_ft = {
      javascript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
      lua = { "stylua" },
      cpp = { "clang-format" },
    },
  },
}
