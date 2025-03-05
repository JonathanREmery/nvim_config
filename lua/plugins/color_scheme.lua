-- Nightfox | https://github.com/EdenEast/nightfox.nvim
return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- Setup nightfox
        require("nightfox").setup()

        -- Apply carbonfox color scheme
        vim.cmd("colorscheme carbonfox")
    end
}
