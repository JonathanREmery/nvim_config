-- render-markdown | https://github.com/MeanderingProgrammer/render-markdown.nvim
return {
    "MeanderingProgrammer/render-markdown.nvim",
    version = "8.1.1",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        file_types = {"markdown"},
    },
    ft = {"markdown"},
}
