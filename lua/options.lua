vim.o.number = true
vim.o.relativenumber = true

vim.o.scrolloff = 10
vim.o.signcolumn = "yes"

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.smartindent = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.updatetime = 300
vim.o.termguicolors = true

vim.o.swapfile = false

vim.o.clipboard = "unnamedplus"

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)

vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-h>", "wincmd h<CR>")
vim.keymap.set("n", "<C-j>", "wincmd j<CR>")
vim.keymap.set("n", "<C-k>", "wincmd k<CR>")
vim.keymap.set("n", "<C-l>", "wincmd l<CR>")
