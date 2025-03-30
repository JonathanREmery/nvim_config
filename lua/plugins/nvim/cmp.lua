-- Completion Engine
--  nvim-cmp    | https://github.com/hrsh7th/nvim-cmp
--  LuaSnip     | https://github.com/L3MON4D3/LuaSnip
--  cmp_luasnip | https://github.com/saadparwaiz1/cmp_luasnip
return {
    -- Completion engine
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",          -- Load when entering insert mode
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",     -- LSP source for nvim-cmp
            "hrsh7th/cmp-buffer",       -- Buffer completions
            "hrsh7th/cmp-path",         -- File path completions
            "L3MON4D3/LuaSnip",         -- Snippet engine
            "saadparwaiz1/cmp_luasnip", -- Snippet source for nvim-cmp
        },
    },

    -- Snippet engine
    {
        "L3MON4D3/LuaSnip",
        version = "2.*",
        build   = "make install_jsregexp",
    }
}
