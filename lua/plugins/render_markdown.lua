-- render-markdown.nvim
--  https://github.com/MeanderingProgrammer/render-markdown.nvim
return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        -- Setup render-markdown
        require("render-markdown").setup({
            file_types = {
                "markdown",    -- MD files
                "copilot-chat" -- CopilotChat integration
            }
        })
    end
}
