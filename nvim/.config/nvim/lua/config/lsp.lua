local keymap = vim.keymap
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    -- Buffer local mappings
    -- See :help vim.lsp.* for documentation on any of the below functions
    local opts = { buffer = args.buf, silent = true }

    -- Keymaps
    opts.desc = "Go to declaration"
    keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

    opts.desc = "Show LSP references"
    keymap.set("n", "gR", require('telescope.builtin').lsp_references, opts)

    opts.desc = "Show LSP implementation"
    keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

    opts.desc = "Go to definition"
    keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, opts)

    keymap.set("n", "K", vim.lsp.buf.hover, opts)
    keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
    keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
    keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
    keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
    keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
  end,
})
