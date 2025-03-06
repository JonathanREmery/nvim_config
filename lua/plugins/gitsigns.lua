-- gitsigns | https://github.com/lewis6991/gitsigns.nvim
return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        -- Setup gitsigns
        require("gitsigns").setup({
            -- Set signs for diffs
            signs = {
                add          = {text = "+"},
                change       = {text = "~"},
                delete       = {text = "_"},
                topdelete    = {text = "‾"},
                changedelete = {text = "~"}
            },
            signcolumn = true, -- Enable the sign column
            numhl      = true, -- Highlight line numbers
        })

        -- Set keymaps
        local gs = require("gitsigns")
        vim.keymap.set("n", "<leader>gn", gs.next_hunk)
        vim.keymap.set("n", "<leader>gp", gs.prev_hunk)
    end
}
