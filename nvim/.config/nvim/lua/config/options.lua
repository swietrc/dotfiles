local o = vim.opt

o.number = true
o.relativenumber = true

o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4

o.termguicolors = true
o.signcolumn = "yes"
o.cursorline = true

o.wrap = false
o.scrolloff = 6
o.sidescrolloff = 8

o.splitright = true -- always splits right
o.splitbelow = true -- always splits below

o.ignorecase = true -- case sensitive by default
o.smartcase = true -- but becomes case sensitive if search has uppercase

o.clipboard = "unnamedplus" -- use system clipboard
o.undofile = true -- persistend undo across sessions

o.completeopt = { "menu", "menuone", "noselect" }
