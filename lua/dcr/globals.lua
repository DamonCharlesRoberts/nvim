-- Global settings.

-- Colorscheme
vim.cmd("colorscheme github_dark_default")

-- Commands
vim.opt.clipboard = "unnamedplus" -- the system clipboard for yanks
vim.o.splitright = true -- Split buffers to right

-- Editor
vim.opt.nu = true -- Line numbers
vim.opt.relativenumber = true -- Relative line numbers.

-- Tab spacing to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false -- turn on line wrapping

vim.opt.incsearch = true -- turn on incremental search

vim.opt.termguicolors = true -- turn on terminal gui colors
