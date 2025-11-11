return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {
                ensure_installed = {
                    "gopls",
                    "tsserver",
                    "rust-analyzer",
                    "html-lsp",
                    "css-lsp",
                    "json-lsp",
                    "yamlls",
                    "lua_ls"
                },
            },
        },
        "neovim/nvim-lspconfig",
    },
}
