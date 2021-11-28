--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", {noremap = true, silent = true})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
map("n", "<C-h>", "<C-w>h", {noremap = true, silent = false})
map("n", "<C-l>", "<C-w>l", {noremap = true, silent = false})
map("n", "<C-j>", "<C-w>j", {noremap = true, silent = false})
map("n", "<C-k>", "<C-w>k", {noremap = true, silent = false})

map("i", "jk", "<ESC>", {noremap = true, silent = false})
map("i", "kj", "<ESC>", {noremap = true, silent = false})

map("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

map("v", "<", "<gv", {noremap = true, silent = false})
map("v", ">", ">gv", {noremap = true, silent = false})
