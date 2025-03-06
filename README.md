# Neovim Configuration

This repository contains my custom Neovim setup.

## Overview

- **Plugin Manager**: `lazy.nvim` for lazy-loading and managing plugins.
- **Language Support**: LSP integration via `nvim-lspconfig` and `mason.nvim`, with automatic server management through `mason-lspconfig.nvim`.
- **Completion**: Powered by `nvim-cmp` with snippet support from `LuaSnip`, enhanced by AI assistance with `copilot.vim` and `CopilotChat.nvim`.
- **Navigation**: Enhanced file and buffer navigation with `telescope.nvim`, `harpoon`, and a file explorer via `nvim-tree.lua`.
- **Appearance**: `nightfox.nvim` with the `carbonfox` theme, a customized status line via `lualine.nvim`, and icon support with `nvim-web-devicons`.
- **Customizations**: Keybindings, window management, editor settings, and a commenting tool with `Comment.nvim`.

## Plugins

| Plugin                  | Purpose                  | Key Features                                      |
|-------------------------|--------------------------|--------------------------------------------------|
| `lazy.nvim`             | Plugin manager           | Lazy-loading, automatic updates                  |
| `nightfox.nvim`         | Color scheme             | Uses `carbonfox` theme                           |
| `telescope.nvim`        | Fuzzy finder             | File search, grep, and help navigation           |
| `harpoon`               | Buffer navigation        | Quick access to marked buffers (e.g., `<leader>1-9>`) |
| `lualine.nvim`          | Status line              | Customizable with `moonfly` theme                |
| `nvim-lspconfig`        | LSP configuration        | Language server support                          |
| `mason.nvim`            | LSP server management    | Auto-installs `lua_ls` and `clangd`              |
| `mason-lspconfig.nvim`  | LSP bridge               | Integrates `mason` with `nvim-lspconfig`         |
| `nvim-cmp`              | Completion engine        | LSP, snippets, buffer, and path sources          |
| `LuaSnip`               | Snippet engine           | Integrated with `nvim-cmp`                       |
| `cmp-nvim-lsp`          | LSP source               | LSP completions for `nvim-cmp`                   |
| `cmp_luasnip`           | Snippet source           | Bridges `LuaSnip` with `nvim-cmp`                |
| `cmp-buffer`            | Buffer source            | Buffer word completions for `nvim-cmp`           |
| `cmp-path`              | Path source              | File path completions for `nvim-cmp`             |
| `Comment.nvim`          | Commenting tool          | Toggle comments with `<leader>c`                 |
| `github/copilot.vim`    | AI coding assistant      | Code suggestions, custom keymaps (e.g., `<C-j>`) |
| `plenary.nvim`          | Utility library          | Dependency for various plugins                   |
| `CopilotChat.nvim`      | AI chat interface        | Chat with Copilot, code review, optimization     |
| `nvim-tree.lua`         | File explorer            | Tree-style navigation, toggle with `<leader>t`   |
| `nvim-web-devicons`     | Icon support             | Enhances UI with file type icons                 |
