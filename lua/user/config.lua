-- Disable arrow controls
vim.cmd("map <Up> <Nop>")
vim.cmd("map <Down> <Nop>")
vim.cmd("map <Left> <Nop>")
vim.cmd("map <Right> <Nop>")

-- Set leader to <Space>
vim.g.mapleader = " "

-- Line numbering
vim.opt.nu             = true
vim.opt.relativenumber = true

-- Tab spacing
vim.opt.tabstop     = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth  = 4
vim.opt.expandtab   = true
vim.opt.smartindent = true

-- Disable text wrapping
vim.opt.wrap = false

-- Enable 24-bit RGB colors
vim.opt.termguicolors = true

-- Disable search highlighting
vim.keymap.set("n", "<Esc>", ":noh<CR>")

-- Keep sign column visible to prevent width shifting
vim.opt.signcolumn = "yes"

-- Enable mouse
vim.o.mousemoveevent = true

-- Set status line to global
vim.opt.laststatus = 3

-- Enable vertical border
vim.cmd("set colorcolumn=80")

-- Window command options
local opts = {noremap=true, silent=true}

-- Window splits
vim.keymap.set("n", "<leader>wsv", ":vsplit<CR>", opts)
vim.keymap.set("n", "<leader>wsh", ":split<CR>",  opts)

-- Window navigation
vim.keymap.set("n", "<leader>wh", "<C-w>h", opts)
vim.keymap.set("n", "<leader>wj", "<C-w>j", opts)
vim.keymap.set("n", "<leader>wk", "<C-w>k", opts)
vim.keymap.set("n", "<leader>wl", "<C-w>l", opts)

-- Window close
vim.keymap.set("n", "<leader>wc", ":close<CR>", opts)

-- Disable auto commenting
vim.cmd("autocmd  FileType * set formatoptions-=ro")

-- Split right by default
vim.opt.splitright = true
