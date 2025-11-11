return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- optional, for file icons
	},
	keys = {
		{ "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle Nvim Tree" },
	},
    opts = {}
}
