-- AI
--  copilot.vim      | https://github.com/github/copilot.vim
--  CopilotChat.nvim | https://github.com/CopilotC-Nvim/CopilotChat.nvim
return {
    {
        "github/copilot.vim",
        config = function()
            -- Disable default Copilot tab mapping
            vim.g.copilot_no_tab_map = true

            -- Setup Copilot keymaps
            local opts = {expr = true, silent = true, replace_keycodes = false}
            vim.keymap.set("i", "<Tab>",     "copilot#Accept()",     opts)
            vim.keymap.set("i", "<C-S-Tab>", "copilot#AcceptWord()", opts)
        end
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            {"github/copilot.vim"},
            {"nvim-lua/plenary.nvim", branch = "master"}
        },
        build = "make tiktoken",
        config = function()
            -- Setup CopilotChat
            require("CopilotChat").setup({
                -- Window settings
                window = {
                    width = 0.333
                },
                -- Default model
                model = "claude-3.5-sonnet"
            })
        end
    }
}
