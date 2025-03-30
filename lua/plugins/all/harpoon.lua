-- Harpoon | https://github.com/ThePrimeagen/harpoon/tree/harpoon2
return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        -- Setup Harpoon
        local harpoon = require("harpoon")
        harpoon:setup()
    end
}
