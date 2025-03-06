-- Comment.nvim | https://github.com/numToStr/Comment.nvim
return {
    'numToStr/Comment.nvim',
    config = function()
        -- Setup Comment
        require("Comment").setup({
            opleader = {
                line  = "<leader>c",
            },
            toggler = {
                line  = "<leader>c",
            }
        })
    end
}
