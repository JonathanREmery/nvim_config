-- LSP
--  mason.nvim     | https://github.com/williamboman/mason.nvim
--  nvim-lspconfig | https://github.com/neovim/nvim-lspconfig
return {
    -- mason.nvim
    {
        "williamboman/mason.nvim",
        config = function() require("mason").setup() end
    },

    -- nvim-lspconfig
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp"
        },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local servers = {
                "lua_ls",
                "clangd",
            }

            for _, server in ipairs(servers) do
                lspconfig[server].setup({capabilities = capabilities})
            end
        end
    },
}
