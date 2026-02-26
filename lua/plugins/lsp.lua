return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
	},
	automatic_installation = true,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-lspconfig.nvim" },
    config = function()
      -- 🔥 NEW API (NO deprecated framework)

      local servers = {
        lua_ls = {},
        pyright = {},
        rust_analyzer = {},
      }

      -- Shared keymaps when LSP attaches
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local opts = { buffer = bufnr, silent = true }

          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	  vim.keymap.set("n", "<leader>r", function()
		  vim.diagnostic.open_float(nil, { focus = true })
	  end, { buffer = bufnr, desc = "Show diagnostic error" })
        end,
      })

      -- Register servers using NEW config system
      for server, config in pairs(servers) do
        vim.lsp.config[server] = vim.tbl_extend("force", {
          cmd = nil,
        }, config)
      end

      -- Enable them
      for server in pairs(servers) do
        vim.lsp.enable(server)
      end
    end,
  },
}
