-- ~/.config/nvim/init.lua
-- Minimal Neovim setup

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Make Mason-installed tools visible to Neovim
vim.env.PATH = table.concat({
	vim.fn.stdpath("data") .. "/mason/bin",
	vim.env.PATH,
}, ":")

-- core config
require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.lsp")
