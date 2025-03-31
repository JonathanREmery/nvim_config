-- nvim-treesitter | https://github.com/nvim-treesitter/nvim-treesitter
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "lua",
                "c",
                "markdown",
                "markdown_inline"
            },
            sync_install = false,
            highlight    = {enable = true},
            indent       = {enable = true}
        })
    end
}
