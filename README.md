# Neovim Configuration

This repository contains my custom Neovim setup.

## Overview

- **Plugin Manager**: `lazy.nvim` for lazy-loading and managing plugins.
- **Language Support**: LSP integration via `nvim-lspconfig` and `mason.nvim`.
- **Completion**: Powered by `nvim-cmp` with snippet support from `LuaSnip`.
- **Navigation**: Enhanced file and buffer navigation with `telescope.nvim`, `harpoon`, and a file explorer via `nvim-tree.lua`.
- **Appearance**: `Moegi Black Zen` theme ported from VSCode, a customized status line via `lualine.nvim`, Markdown rendering with `render-markdown.nvim`, and icon support with `nvim-web-devicons`.
- **Version Control**: Git integration with `gitsigns.nvim` for diff signs and hunk navigation.
- **Customizations**: Keybindings, window management, editor settings, and a commenting tool with `Comment.nvim`.

## Plugins

| Plugin                  | Purpose                  | Key Features                                      |
|-------------------------|--------------------------|--------------------------------------------------|
| `lazy.nvim`             | Plugin manager           | Lazy-loading, automatic updates                  |
| `telescope.nvim`        | Fuzzy finder             | File search, grep, and help navigation           |
| `harpoon`               | Buffer navigation        | Quick access to marked buffers (e.g., `<leader>1-9>`) |
| `lualine.nvim`          | Status line              | Customizable with `moonfly` theme                |
| `nvim-lspconfig`        | LSP configuration        | Language server support                          |
| `mason.nvim`            | LSP server management    | Auto-installs `lua_ls` and `clangd`              |
| `nvim-cmp`              | Completion engine        | LSP, snippets, buffer, and path sources          |
| `LuaSnip`               | Snippet engine           | Integrated with `nvim-cmp`                       |
| `cmp-nvim-lsp`          | LSP source               | LSP completions for `nvim-cmp`                   |
| `cmp_luasnip`           | Snippet source           | Bridges `LuaSnip` with `nvim-cmp`                |
| `cmp-buffer`            | Buffer source            | Buffer word completions for `nvim-cmp`           |
| `cmp-path`              | Path source              | File path completions for `nvim-cmp`             |
| `Comment.nvim`          | Commenting tool          | Toggle comments with `<leader>c`                 |
| `plenary.nvim`          | Utility library          | Dependency for various plugins                   |
| `nvim-tree.lua`         | File explorer            | Tree-style navigation, toggle with `<leader>fe`   |
| `nvim-web-devicons`     | Icon support             | Enhances UI with file type icons                 |
| `gitsigns.nvim`         | Git integration          | Diff signs, hunk navigation (e.g., `<leader>gn`) |
| `render-markdown.nvim`  | Markdown rendering       | Renders Markdown in buffers, supports CopilotChat|
