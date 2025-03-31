-- Command Options
local opts = {noremap=true, silent=true}

-- Navigation
if (not vim.g.vscode) then
    local function navigate(direction)
            local win_number = vim.fn.winnr(direction)
            if win_number == vim.fn.winnr() then
                if direction == "h" or direction == "l" then
                    vim.cmd("vsplit")
                else
                    vim.cmd("split")
                end
            end

            vim.cmd("wincmd " .. direction)
    end
    vim.keymap.set("n", "<M-h>", function() navigate("h") end)
    vim.keymap.set("n", "<M-j>", function() navigate("j") end)
    vim.keymap.set("n", "<M-k>", function() navigate("k") end)
    vim.keymap.set("n", "<M-l>", function() navigate("l") end)
    vim.keymap.set("n", "<leader>gb", "<C-o>",  opts)
else
    local vscode = require("vscode")
    vim.keymap.set(
        "n",
        "<M-h>",
        function() vscode.action("workbench.action.navigateLeft") end
    )
    vim.keymap.set(
        "n",
        "<M-j>",
        function() vscode.action("workbench.action.navigateDown") end
    )
    vim.keymap.set(
        "n",
        "<M-k>",
        function() vscode.action("workbench.action.navigateUp") end
    )
    vim.keymap.set(
        "n",
        "<M-l>",
        function() vscode.action("workbench.action.navigateRight") end
    )
end

-- Window
if (not vim.g.vscode) then
    vim.keymap.set("n", "<leader>wn", ":vsplit<CR>", opts)
    vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", opts)
    vim.keymap.set("n", "<leader>wh", ":split<CR>",  opts)
    vim.keymap.set("n", "<leader>wc", ":close<CR>",  opts)
    vim.keymap.set("n", "<leader>q",  ":qa!<CR>",     opts)
else
    local vscode = require("vscode")
    vim.keymap.set(
        "n",
        "<leader>wn",
        function() vscode.action("workbench.action.splitEditorRight") end
    )
    vim.keymap.set(
        "n",
        "<leader>wv",
        function() vscode.action("workbench.action.splitEditorRight") end
    )
    vim.keymap.set(
        "n",
        "<leader>wh",
        function() vscode.action("workbench.action.splitEditorDown") end
    )
    vim.keymap.set(
        "n",
        "<leader>wc",
        function() vscode.action("workbench.action.closeEditorsInGroup") end
    )
    vim.keymap.set(
        "n",
        "<leader>q",
        function() vscode.action("workbench.action.closeWindow") end
    )
end

-- Search
if (not vim.g.vscode) then
    local telescope_builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>sf", telescope_builtin.find_files, opts)
    vim.keymap.set("n", "<leader>sb", telescope_builtin.buffers,    opts)
    vim.keymap.set("n", "<leader>ss", telescope_builtin.live_grep,  opts)
else
    local vscode = require("vscode")
    vim.keymap.set(
        "n",
        "<leader>sf",
        function() vscode.action("workbench.action.quickOpen") end
    )
    vim.keymap.set(
        "n",
        "<leader>sb",
        function()
            vscode.action("workbench.action.showEditorsInActiveGroup")
        end
    )
    vim.keymap.set(
        "n",
        "<leader>ss",
        function() vscode.action("workbench.action.findInFiles") end
    )
end

-- File
if (not vim.g.vscode) then
    local telescope_builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<CR>",        opts)
    vim.keymap.set("n", "<leader>fo", telescope_builtin.find_files, opts)
else
    local vscode = require("vscode")
    vim.keymap.set(
        "n",
        "<leader>fe",
        function()
            vscode.action("workbench.explorer.fileView.focus")
        end
    )
    vim.keymap.set(
        "n",
        "<leader>fz",
        function()
            vscode.action("workbench.action.toggleSidebarVisibility")
        end
    )
    vim.keymap.set(
        "n",
        "<leader>fo",
        function()
            vscode.action("workbench.action.quickOpen")
        end
    )
end
vim.keymap.set("n", "<leader>fw", ":w<CR>", opts)
vim.keymap.set("n", "<leader>fc", ":bdelete<CR>", opts)

-- Buffer
if (not vim.g.vscode) then
    local telescope_builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>bo", telescope_builtin.buffers, opts)
    vim.keymap.set("n", "<leader>bn", ":bnext<CR>",              opts)
    vim.keymap.set("n", "<leader>bp", ":bprev<CR>",              opts)
    vim.keymap.set("n", "<leader>bc", ":bdelete<CR>",            opts)
else
    local vscode = require("vscode")
    vim.keymap.set(
        "n",
        "<leader>bo",
        function()
            vscode.action("workbench.action.showEditorsInActiveGroup")
        end
    )
    vim.keymap.set(
        "n",
        "<leader>bn",
        function() vscode.action("workbench.action.nextEditor") end
    )
    vim.keymap.set(
        "n",
        "<leader>bp",
        function() vscode.action("workbench.action.previousEditor") end
    )
    vim.keymap.set(
        "n",
        "<leader>bc",
        function() vscode.action("workbench.action.closeActiveEditor") end
    )
end

-- Completion
if (not vim.g.vscode) then
    local cmp     = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-j>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                else
                    fallback()
                end
            end, {"i", "s"}),

            ["<C-k>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, {"i", "s"}),

            ["<CR>"] = cmp.mapping.confirm({select = false}),
        }),
        sources = {
            {name = "nvim_lsp"},
            {name = "luasnip"},
            {name = "buffer"},
            {name = "path"}
        },
    })
end

-- LSP
if (not vim.g.vscode) then
    opts = {buffer=bufnr, noremap=true, silent=true}
    local telescope_builtin = require("telescope.builtin")
    vim.keymap.set(
        "n",
        "<leader>ls",
        telescope_builtin.treesitter,
        opts
    )
    vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition,  opts)
    vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "<leader>li", vim.lsp.buf.hover,       opts)
    vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename,      opts)
    vim.keymap.set(
        "n",
        "<leader>lR",
        telescope_builtin.lsp_references,
        opts
    )
else
    opts = {noremap=true, silent=true}
    local vscode = require("vscode")
    vim.keymap.set(
        "n",
        "<leader>ls",
        function() vscode.action("editor.action.goToSymbol") end,
        opts
    )
    vim.keymap.set(
        "n",
        "<leader>ld",
        function() vscode.action("editor.action.revealDefinition") end,
        opts
    )
    vim.keymap.set(
        "n",
        "<leader>lD",
        function() vscode.action("editor.action.goToTypeDefinition") end,
        opts
    )
    vim.keymap.set(
        "n",
        "<leader>li",
        function() vscode.action("editor.action.showHover") end,
        opts
    )
    vim.keymap.set(
        "n",
        "<leader>lr",
        function() vscode.action("editor.action.rename") end,
        opts
    )
end
local comment = require("Comment")
comment.setup({
    opleader = {
        line  = "<leader>c",
    },
    toggler = {
        line  = "<leader>c",
    }
})

-- Diagnostic
if (not vim.g.vscode) then
    local telescope_builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>do", telescope_builtin.diagnostics, opts)
end
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next,  opts)
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev,  opts)

-- Git
if (not vim.g.vscode) then
    local gitsigns = require("gitsigns")
    vim.keymap.set("n", "<leader>gn", gitsigns.next_hunk)
    vim.keymap.set("n", "<leader>gp", gitsigns.prev_hunk)
else
    local vscode = require("vscode")
    vim.keymap.set(
        "n",
        "<leader>gn",
        function() vscode.action("workbench.action.editor.nextChange") end,
        opts
    )
    vim.keymap.set(
        "n",
        "<leader>gp",
        function() vscode.action("workbench.action.editor.previousChange") end,
        opts
    )
end

-- Harpoon
if (not vim.g.vscode) then
    local harpoon = require("harpoon")
    vim.keymap.set(
        "n",
        "<leader>hm",
        function() harpoon.ui:toggle_quick_menu(harpoon:list()) end
    )
    vim.keymap.set(
        "n",
        "<leader>ha",
        function() harpoon:list():add() end
    )
    vim.keymap.set(
        "n",
        "<leader>hc",
        function() harpoon:list():clear() end
    )
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
else
    local vscode = require("vscode")
    vim.keymap.set(
        "n",
        "<leader>hm",
        function() vscode.action("vscode-harpoon.editEditors") end
    )
    vim.keymap.set(
        "n",
        "<leader>ha",
        function() vscode.action("vscode-harpoon.addEditor") end
    )
    vim.keymap.set(
        "n",
        "<leader>hc",
        function() vscode.action("vscode-harpoon.editEditors") end
    )
    vim.keymap.set(
        "n",
        "<leader>1",
        function() vscode.action("vscode-harpoon.gotoEditor1") end
    )
    vim.keymap.set(
        "n",
        "<leader>2",
        function() vscode.action("vscode-harpoon.gotoEditor2") end
    )
    vim.keymap.set(
        "n",
        "<leader>3",
        function() vscode.action("vscode-harpoon.gotoEditor3") end
    )
    vim.keymap.set(
        "n",
        "<leader>4",
        function() vscode.action("vscode-harpoon.gotoEditor4") end
    )
    vim.keymap.set(
        "n",
        "<leader>5",
        function() vscode.action("vscode-harpoon.gotoEditor5") end
    )
    vim.keymap.set(
        "n",
        "<leader>6",
        function() vscode.action("vscode-harpoon.gotoEditor6") end
    )
    vim.keymap.set(
        "n",
        "<leader>7",
        function() vscode.action("vscode-harpoon.gotoEditor7") end
    )
    vim.keymap.set(
        "n",
        "<leader>8",
        function() vscode.action("vscode-harpoon.gotoEditor8") end
    )
    vim.keymap.set(
        "n",
        "<leader>9",
        function() vscode.action("vscode-harpoon.gotoEditor9") end
    )
end
vim.keymap.set(
    "n",
    "<leader>0",
    function() vim.cmd("e ~/.config/nvim/lua/user/keymaps.lua") end
)
