vim.wo.number = true
vim.wo.relativenumber = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.cursorline = true
vim.opt.swapfile = false
vim.cmd('syntax enable')
require("lazy_setup")
vim.cmd[[colorscheme eldritch]]
require("lsp.mason")
