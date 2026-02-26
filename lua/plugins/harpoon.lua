return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({})

		local list = harpoon:list()

		-- Add file
		vim.keymap.set("n", "<leader>a", function()
			list:add()
		end, { desc = "Add file to Harpoon" })

		-- Toggle menu
		vim.keymap.set("n", "<leader>h", function()
			harpoon.ui:toggle_quick_menu(list)
		end, { desc = "Harpoon menu" })
		for i = 1, 7 do
			vim.keymap.set("n", "<leader>" .. i, function()
				local items = list.items

				if items[i] then
					list:select(i)
				else
					vim.notify("Harpoon slot " .. i .. " is empty", vim.log.levels.WARN)
				end
			end, { desc = "Harpoon file " .. i })
		end
	end,
}
