return {
  "saghen/blink.cmp",
  opts = {
    -- Enables keymaps, completions and signature help when true (doesn't apply to cmdline or term)
    --
    -- If the function returns 'force', the default conditions for disabling the plugin will be ignored
    -- Default conditions: (vim.bo.buftype ~= 'prompt' and vim.b.completion ~= false)
    -- Note that the default conditions are ignored when `vim.b.completion` is explicitly set to `true`
    --
    -- Exceptions: vim.bo.filetype == 'dap-repl'
    enabled = function()
      return not vim.tbl_contains({ "lua", "markdown" }, vim.bo.filetype)
    end,

    -- Disable cmdline
    cmdline = { enabled = false },

    completion = {
      -- 'prefix' will fuzzy match on the text before the cursor
      -- 'full' will fuzzy match on the text before _and_ after the cursor
      -- example: 'foo_|_bar' will match 'foo_' for 'prefix' and 'foo__bar' for 'full'
      keyword = { range = "full" },

      accept = { auto_brackets = { enabled = true } },

      ghost_text = { enabled = true },

      documentation = { auto_show = true, auto_show_delay = 200 },

      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },

      signature = { enabled = true },
    },

    keymap = {
      preset = "super-tab",
      ["<Tab>"] = {
        function(cmp)
          if cmp.snippet_active() then
            return cmp.accept()
          else
            return cmp.select_and_accept()
          end
        end,
        "snippet_forward",
        "fallback",
      },
    },
  },
}
