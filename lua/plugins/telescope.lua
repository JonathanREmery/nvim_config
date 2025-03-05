-- Telescope | https://github.com/nvim-telescope/telescope.nvim
return {
    "nvim-telescope/telescope.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        -- Require buitlin
        local builtin = require("telescope.builtin")

        -- Find file
        vim.keymap.set(
            "n",
            "<leader>ff",
            builtin.find_files
        )

        -- Find grep
        vim.keymap.set(
            "n",
            "<leader>fg",
            builtin.live_grep
        )

        -- Find help
        vim.keymap.set(
            "n",
            "<leader>fh",
            builtin.help_tags
        )
    end
}
