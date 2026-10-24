--keep block cursor when changing modes
vim.opt.guicursor = ""

-- Enable hybrid relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Configure clean, standard 4-space indentation layouts
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Smart wrapping and indentation
vim.opt.smartindent = true
vim.opt.wrap = false

-- Keep search matching highlighted cleanly
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Enable full 24-bit RGB true color rendering in terminal
vim.opt.termguicolors = true
vim.cmd("colorscheme desert")

-- Keep at least 8 lines visible above/below cursor when scrolling
vim.opt.scrolloff = 8
