return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
    "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- Disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- Setup nvim-tree
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
                side = "left",
            },
            renderer = {
                group_empty = true, -- Collapse empty folders 
            },
            filters = {
                dotfiles = false,   -- Show dotfiles
            },
        })

        -- Toggle nvim-tree
        vim.keymap.set(
            "n",
            "<leader>t",
            ":NvimTreeToggle<CR>",
            {noremap = true, silent = true}
        )
    end,
}
