-- Harpoon | https://github.com/ThePrimeagen/harpoon/tree/harpoon2
return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        -- Setup Harpoon
        local harpoon = require("harpoon")
        harpoon:setup()

        -- Harpoon menu
        vim.keymap.set(
            "n",
            "<leader>hm",
            function() harpoon.ui:toggle_quick_menu(harpoon:list()) end
        )

        -- Harpoon add
        vim.keymap.set(
            "n",
            "<leader>ha",
            function() harpoon:list():add() end
        )

        -- Harpoon clear
        vim.keymap.set(
            "n",
            "<leader>hc",
            function() harpoon:list():clear() end
        )

        -- Harpoon config
        vim.keymap.set(
            "n",
            "<leader>0",
            function() vim.cmd("e ~/.config/nvim/lua/plugins/harpoon.lua") end
        )

        -- Harpoon buffers
        vim.keymap.set(
            "n",
            "<leader>1",
            function() harpoon:list():select(1) end
        )

        vim.keymap.set(
            "n",
            "<leader>2",
            function() harpoon:list():select(2) end
        )

        vim.keymap.set(
            "n",
            "<leader>3",
            function() harpoon:list():select(3) end
        )

        vim.keymap.set(
            "n",
            "<leader>4",
            function() harpoon:list():select(4) end
        )

        vim.keymap.set(
            "n",
            "<leader>5",
            function() harpoon:list():select(5) end
        )

        vim.keymap.set(
            "n",
            "<leader>6",
            function() harpoon:list():select(6) end
        )

        vim.keymap.set(
            "n",
            "<leader>7",
            function() harpoon:list():select(7) end
        )

        vim.keymap.set(
            "n",
            "<leader>8",
            function() harpoon:list():select(8) end
        )

        vim.keymap.set(
            "n",
            "<leader>9",
            function() harpoon:list():select(9) end
        )
    end
}
