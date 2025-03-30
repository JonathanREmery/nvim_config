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
    end
}
