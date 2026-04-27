local opt = vim.opt

-- basics
opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.updatetime = 300
opt.timeoutlen = 400
opt.signcolumn = "yes"
opt.termguicolors = true
opt.cursorline = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.splitright = true
opt.splitbelow = true
opt.showmode = false
opt.wrap = false

-- editing
opt.smartindent = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- undo / files
opt.undofile = true
opt.undodir = vim.fn.expand("~/.config/nvim/undo")
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- ui cleanup
opt.fillchars = { eob = " " }

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
