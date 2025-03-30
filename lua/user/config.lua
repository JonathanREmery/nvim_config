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

-- System Clipboard
vim.opt.clipboard = "unnamedplus"

-- Split right by default
vim.opt.splitright = true
