-- LSP
--  nvim-lspconfig       | https://github.com/neovim/nvim-lspconfig
--  mason.nvim           | https://github.com/williamboman/mason.nvim
--  mason-lspconfig.nvim | https://github.com/williamboman/mason-lspconfig.nvim
return {
    -- nvim-lspconfig
    {
        "neovim/nvim-lspconfig",
        lazy = false -- Disable lazy loading
    },

    -- mason.nvim
    {
        "williamboman/mason.nvim",
        config = function() require("mason").setup() end
    },

    -- mason-lspconfig.nvim
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp"
        },
        config = function()
            -- Setup mason-lspconfig
            require("mason-lspconfig").setup({
                -- Install servers
                ensure_installed = {
                    "lua_ls", -- LSP | Lua
                    "clangd"  -- LSP | C C++
                },
                -- Enable automatic installation
                automatic_installation = true
            })

            -- Get completion capabilities
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- Setup LSP handlers
            require("mason-lspconfig").setup_handlers({
                function(server)
                    require("lspconfig")[server].setup({
                        -- Completion integration
                        capabilities = capabilities,

                        -- Setup keymaps
                        on_attach = function()
                            -- Keymap options
                            local opts = {
                                buffer=bufnr,
                                noremap=true,
                                silent=true
                            }

                            -- Go to definition
                            vim.keymap.set(
                                "n",
                                "<leader>gd",
                                vim.lsp.buf.definition,
                                opts
                            )

                            -- Go to declaration
                            vim.keymap.set(
                                "n",
                                "<leader>gD",
                                vim.lsp.buf.declaration,
                                opts
                            )

                            -- Find references
                            vim.keymap.set(
                                "n",
                                "<leader>fr",
                                vim.lsp.buf.references,
                                opts
                            )

                            -- Info hover
                            vim.keymap.set(
                                "n",
                                "<leader>ih",
                                vim.lsp.buf.hover,
                                opts
                            )

                            -- Info signature
                            vim.keymap.set(
                                "n",
                                "<leader>is",
                                vim.lsp.buf.signature_help,
                                opts
                            )

                            -- Rename
                            vim.keymap.set(
                                "n",
                                "<leader>lr",
                                vim.lsp.buf.rename,
                                opts
                            )

                            -- Diagnostics open
                            vim.keymap.set(
                                "n",
                                "<leader>do",
                                vim.diagnostic.open_float,
                                opts
                            )

                            -- Diagnostics next
                            vim.keymap.set(
                                "n",
                                "<leader>dn",
                                vim.diagnostic.goto_next,
                                opts
                            )

                            -- Diagnostics previous
                            vim.keymap.set(
                                "n",
                                "<leader>dp",
                                vim.diagnostic.goto_prev,
                                opts
                            )

                            -- Go back
                            vim.keymap.set(
                                "n",
                                "<leader>gb",
                                "<C-o>",
                                opts
                            )
                        end
                    })
                end
            })
        end
    }
}
