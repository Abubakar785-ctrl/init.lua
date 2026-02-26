return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,

		config = function()
			require("neo-tree").setup({})

			-- Toggle (open/close)
			vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
			vim.keymap.set("n", "<leader>n", ":Neotree focus<CR>", { desc = "Focus Neo-tree" })
			vim.keymap.set("n", "<leader>b", "<C-w>p", { desc = "Back to file" })
		end,
	},
}
