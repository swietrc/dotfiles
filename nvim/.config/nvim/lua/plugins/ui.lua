return {
	{
		"nvim-tree/nvim-web-devicons",
		lazy = false, -- load early so health checks see it
		opts = { default = true }, -- fallback icons if a filetype is unknown
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				theme = "auto",
				globalstatus = true, -- single statusline (set vim.opt.laststatus=3 in your options.lua)
				section_separators = "",
				component_separators = "",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { { "filename", path = 1 } }, -- relative path
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		},
	},
	{
		"akinsho/bufferline.nvim",
		event = "UIEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{ "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
			{ "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
			{ "<leader>bd", "<cmd>bdelete<cr>", desc = "Delete buffer" },
			{ "<leader>&", "<cmd>BufferLineGoToBuffer 1<cr>", desc = "Go to buffer 1" },
			{ "<leader>é", "<cmd>BufferLineGoToBuffer 2<cr>", desc = "Go to buffer 2" },
			{ '<leader>"', "<cmd>BufferLineGoToBuffer 3<cr>", desc = "Go to buffer 3" },
			{ "<leader>'", "<cmd>BufferLineGoToBuffer 4<cr>", desc = "Go to buffer 4" },
		},
		opts = {
			options = {
				mode = "buffers", -- show open buffers (use "tabs" for real tabpages)
				always_show_bufferline = true,
				show_close_icon = false,
				show_buffer_close_icons = false,
				separator_style = "slant",
				diagnostics = false, -- can be "nvim_lsp" later
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "left",
						separator = true,
					},
				},
			},
		},
	},
	{
		--- Enhance the UI for messages, cmdline and the popupmenu
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		opts = {
			lsp = {
				progress = { enabled = true },
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = true,
			},
		},
	},
}
