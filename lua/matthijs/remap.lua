vim.g.mapleader = " "
vim.keymap.set("n", "<leader>p", vim.cmd.Ex)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>c", vim.cmd.close)

-- :x is used to save the buffer
vim.keymap.set("n", "<leader>x", vim.cmd.x)

vim.keymap.set("n", "<leader>g", vim.cmd.Git)

-- These are for scrolling around (CTRL + d or Ctrl+ u with the cursor staying in the middle of the page
vim.keymap.set("n", "<C-d", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")

-- Allows moving text around that is selected with auto formatting
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":M '<-1<CR>gv=gv")

-- Disable capital Q
vim.keymap.set("n", "Q", "<nop>")
