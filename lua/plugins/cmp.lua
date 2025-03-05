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
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            -- Setup cmp
            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    -- Select next completion
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jump()
                        else
                            fallback()
                        end
                    end, {"i", "s"}),

                    -- Select previous completion
                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif luasnip.jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, {"i", "s"}),

                    -- Accept completion
                    ["<CR>"] = cmp.mapping.confirm({select = true}),
                }),
                sources = {
                    {name = "nvim_lsp"}, -- LSP completions
                    {name = "luasnip"},  -- Snippet completions
                    {name = "buffer"},   -- Buffer words
                    {name = "path"},     -- File paths
                },
            })
        end,
    },

    -- Snippet engine
    {
        "L3MON4D3/LuaSnip",
        version = "2.*",
        build = "make install_jsregexp",
    }
}
