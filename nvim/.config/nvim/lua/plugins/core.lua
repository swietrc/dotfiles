return {
	{ "nvim-lua/plenary.nvim", lazy = true },
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			plugins = { spelling = true },
			win = { border = "rounded" },
			spec = {
				{ "<leader>f", group = "Find" },
				{ "<leader>g", group = "Git" },
				{ "<leader>l", group = "LSP" },
			},
		},
	},
}
