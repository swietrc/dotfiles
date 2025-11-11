-- Keymaps
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- windows nav
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- resize
vim.keymap.set("n", "<A-Left>", ":vertical resize +2<CR>", silent)
vim.keymap.set("n", "<A-Right>", ":vertical resize -2<CR>", silent)
vim.keymap.set("n", "<A-Up>", ":resize +2<CR>", silent)
vim.keymap.set("n", "<A-Down>", ":resize -2<CR>", silent)
