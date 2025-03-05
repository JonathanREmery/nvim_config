# Neovim Configuration

This repository contains my custom Neovim setup. 

## Overview

- **Plugin Manager**: `lazy.nvim` for lazy-loading and managing plugins.
- **Language Support**: LSP integration via `nvim-lspconfig` and `mason.nvim`.
- **Completion**: Powered by `nvim-cmp` with snippet support from `LuaSnip`.
- **Navigation**: Enhanced file and buffer navigation with `telescope.nvim` and `harpoon`.
- **Appearance**: `nightfox.nvim` with the `carbonfox` theme and a customized status line via `lualine.nvim`.
- **Customizations**: Keybindings, window management, and editor settings.

## Plugins

| Plugin           | Purpose               | Key Features                            |
|------------------|-----------------------|-----------------------------------------|
| `lazy.nvim`      | Plugin manager        | Lazy-loading, automatic updates         |
| `nvim-cmp`       | Completion engine     | LSP, snippets, buffer, and path sources |
| `LuaSnip`        | Snippet engine        | Integrated with `nvim-cmp`              |
| `nvim-lspconfig` | LSP configuration     | Language server support                 |
| `mason.nvim`     | LSP server management | Auto-installs `lua_ls` and `clangd`     |
| `telescope.nvim` | Fuzzy finder          | File search, grep, and help navigation  |
| `harpoon`        | Buffer navigation     | Quick access to marked buffers          |
| `nightfox.nvim`  | Color scheme          | Uses `carbonfox` theme                  |
| `lualine.nvim`   | Status line           | Customizable with `moonfly` theme       |
