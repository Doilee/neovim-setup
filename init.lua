require("matthijs.remap")

vim.cmd.colorscheme('darcula-solid')
vim.opt.termguicolors = true

-- use 4 spaces instead of tab (to replace existing tab use :retab)
-- copy indent from current line when starting a new line
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.scrolloff = 8
--vim.opt.colorcolumn = "80"
