# Neovim configuration overview

This Neovim setup lives under `.config/nvim` and is managed with [`lazy.nvim`](https://github.com/folke/lazy.nvim). The summary below captures every plugin declared in `lua/plugins` (and its LSP subdirectory) along with the custom keymaps defined in `lua/config` and individual plugin specs.

## Plugins

| Plugin | Purpose / Notes |
| --- | --- |
| `folke/lazy.nvim` | Plugin manager that bootstraps the rest of the configuration. |
| `nvim-lua/plenary.nvim` | Lua utilities required by multiple plugins. |
| `folke/which-key.nvim` | On-screen helper that documents leader mappings. |
| `catppuccin/nvim` | Catppuccin Mocha colorscheme with integrations for NvimTree, Bufferline, Telescope, and WhichKey. |
| `nvim-treesitter/nvim-treesitter` | Incremental parsing for syntax highlighting (`:TSUpdate` keeps parsers current). |
| `nvim-tree/nvim-web-devicons` | Filetype glyphs used across the UI. |
| `nvim-lualine/lualine.nvim` | Statusline configured for a single global status bar with relative paths. |
| `akinsho/bufferline.nvim` | Buffer tabline with navigation shortcuts and NvimTree offset. |
| `folke/noice.nvim` | Enhanced notifications, command line, and LSP UI (depends on `MunifTanjim/nui.nvim` and `rcarriga/nvim-notify`). |
| `MunifTanjim/nui.nvim` | UI component library required by Noice. |
| `rcarriga/nvim-notify` | Notification UI backend used by Noice. |
| `nvim-tree/nvim-tree.lua` | File explorer sidebar toggled on demand. |
| `nvim-telescope/telescope.nvim` | Fuzzy finder for files, buffers, help, and live grep. |
| `nvim-telescope/telescope-fzf-native.nvim` | Optional native sorter (built with `make`). |
| `github/copilot.vim` | GitHub Copilot integration for AI-assisted completion. |
| `saghen/blink.cmp` | Completion engine configured with LSP, path, snippets, and buffer sources. |
| `rafamadriz/friendly-snippets` | Collection of snippets exposed to Blink. |
| `folke/trouble.nvim` | Diagnostics, LSP references, and lists viewer using Neovim’s quickfix/location data. |
| `mason-org/mason.nvim` | Installs external LSP servers and tooling (ensures `gopls`, `tsserver`, `rust-analyzer`, `html-lsp`, `css-lsp`, `json-lsp`, `yamlls`, and `lua_ls`). |
| `mason-org/mason-lspconfig.nvim` | Bridges Mason installations with `nvim-lspconfig`. |
| `neovim/nvim-lspconfig` | Configures built-in LSP client and hooks LSP-related keymaps. |

## Keymaps

### Global leaders

- `<Space>` is the primary `mapleader`.

### General mappings

| Mode | Keys | Action |
| --- | --- | --- |
| Normal | `<leader>q` | Quit current window (`:q`). |
| Normal | `<leader>w` | Save current buffer (`:w`). |

### Window management

| Mode | Keys | Action |
| --- | --- | --- |
| Normal | `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | Move focus to left/down/up/right split. |
| Normal | `<A-Left>` / `<A-Right>` | Resize vertical splits by ±2 columns. |
| Normal | `<A-Up>` / `<A-Down>` | Resize horizontal splits by ±2 lines. |

### Telescope

| Mode | Keys | Action |
| --- | --- | --- |
| Normal | `<leader>ff` | Find files. |
| Normal | `<leader>fg` | Live grep. |
| Normal | `<leader>fb` | List open buffers. |
| Normal | `<leader>fh` | Search help tags. |

### NvimTree

| Mode | Keys | Action |
| --- | --- | --- |
| Normal | `<leader>e` | Toggle the file explorer. |

### Bufferline

| Mode | Keys | Action |
| --- | --- | --- |
| Normal | `<S-l>` / `<S-h>` | Cycle to the next/previous buffer. |
| Normal | `<leader>bd` | Delete the current buffer. |
| Normal | `<leader>&` | Jump to buffer 1. |
| Normal | `<leader>é` | Jump to buffer 2 (AZERTY-compatible binding). |
| Normal | `<leader>"` | Jump to buffer 3. |
| Normal | `<leader>'` | Jump to buffer 4. |

### Trouble

| Mode | Keys | Action |
| --- | --- | --- |
| Normal | `<leader>xx` | Toggle workspace diagnostics list. |
| Normal | `<leader>xX` | Toggle buffer-local diagnostics. |
| Normal | `<leader>cs` | Toggle document symbols view. |
| Normal | `<leader>cl` | Toggle LSP definitions/references view on the right. |
| Normal | `<leader>xL` | Toggle the location list. |
| Normal | `<leader>xQ` | Toggle the quickfix list. |

### LSP buffer-local mappings

These are registered when an LSP client attaches to a buffer.

| Mode | Keys | Action |
| --- | --- | --- |
| Normal | `gD` | Go to declaration. |
| Normal | `gR` | Telescope-powered references picker. |
| Normal | `gi` | Telescope implementations picker. |
| Normal | `gd` | Telescope definitions picker. |
| Normal | `K` | Hover documentation. |
| Normal | `<leader>vws` | Search workspace symbols. |
| Normal | `<leader>vd` | Open a floating window with diagnostics. |
| Normal | `[d` / `]d` | Jump to previous/next diagnostic. |
| Normal | `<leader>ca` | Trigger a code action. |
| Normal | `<leader>rn` | Rename symbol. |
| Normal | `<leader>rs` | Restart attached LSP clients. |
| Insert | `<C-h>` | Show signature help. |
