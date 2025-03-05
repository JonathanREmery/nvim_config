-- lualine | https://github.com/nvim-lualine/lualine.nvim
return {
    "nvim-lualine/lualine.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        -- Setup lualine
        require("lualine").setup({
          options = {
            theme = "moonfly"
          }
        })
    end
}
