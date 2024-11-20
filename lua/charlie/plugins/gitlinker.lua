return {
	{
		"ruifm/gitlinker.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitlinker").setup({
				-- your custom config here if needed
			})
		end,
	},
}
