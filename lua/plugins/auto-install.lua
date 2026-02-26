return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = { "williamboman/mason.nvim" },

  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = {
        -- Formatters
        "prettier",
        "black",
        "stylua",

        -- Linters
        "eslint_d",
      },

      automatic_installation = true,
    })
  end,
}
