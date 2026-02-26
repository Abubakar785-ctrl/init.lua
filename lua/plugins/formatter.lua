return {
  {
    "stevearc/conform.nvim",
    event = "BufReadPre",

    config = function()
      local conform = require("conform")

      conform.setup({
        formatters_by_ft = {
          javascript = { "prettier" },
          typescript = { "prettier" },
          javascriptreact = { "prettier" },
          typescriptreact = { "prettier" },

          python = { "black" },
          lua = { "stylua" },
        },

        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })

      -- 🔥 Manual format keybind
      vim.keymap.set("n", "<C-i>", function()
        conform.format({ async = true })
      end, { desc = "Format file" })
    end,
  },
}
