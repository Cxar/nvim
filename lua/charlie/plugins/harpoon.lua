return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		-- Keybindings with leader + q
		vim.keymap.set("n", "<leader>qa", function()
			harpoon:list():add()
		end, { desc = "Add file to Harpoon" })
		vim.keymap.set("n", "<leader>qm", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle Harpoon quick menu" })

		-- Select specific files by number
		vim.keymap.set("n", "<leader>q1", function()
			harpoon:list():select(1)
		end, { desc = "Select Harpoon file 1" })
		vim.keymap.set("n", "<leader>q2", function()
			harpoon:list():select(2)
		end, { desc = "Select Harpoon file 2" })
		vim.keymap.set("n", "<leader>q3", function()
			harpoon:list():select(3)
		end, { desc = "Select Harpoon file 3" })
		vim.keymap.set("n", "<leader>q4", function()
			harpoon:list():select(4)
		end, { desc = "Select Harpoon file 4" })

		-- Navigate through Harpoon list
		vim.keymap.set("n", "<leader>qp", function()
			harpoon:list():prev()
		end, { desc = "Previous Harpoon file" })
		vim.keymap.set("n", "<leader>qn", function()
			harpoon:list():next()
		end, { desc = "Next Harpoon file" })
	end,
}
