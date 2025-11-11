return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000, -- load before all other UI plugins
		opts = {
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			transparent_background = false,
			integrations = {
				nvimtree = true,
				bufferline = true,
				treesitter = true,
				telescope = true,
				which_key = true,
			},
		},
		config = function(_, opts)
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		--- fast parser for better syntax highlighting
		"nvim-treesitter/nvim-treesitter",
		tag = "v0.10.0",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
				},
			})
		end,
	},
}
