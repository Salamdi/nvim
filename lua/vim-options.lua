vim.g.mapleader = ","
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nowrap")
vim.cmd("set nu rnu")
vim.cmd("set nohlsearch")
vim.keymap.set("i", "jk", "<ESC>", { nowait = true })
vim.keymap.set("v", "jk", "<ESC>", { nowait = true })
vim.keymap.set("n", "ss", ":w<cr>", {})
vim.keymap.set("n", "sa", ":wa<cr>", {})
vim.keymap.set("n", "<leader>u", "viw~")
vim.keymap.set("n", "<leader>bn", ":bn<CR>")
vim.keymap.set("n", "<leader>bp", ":bp<CR>")
vim.keymap.set("n", "<leader>bd", ":bd<CR>")
vim.keymap.set("n", "<leader>wq", ":q<CR>")
vim.keymap.set("n", "<leader>wj", "<c-w>j")
vim.keymap.set("n", "<leader>wk", "<c-w>k")
vim.keymap.set("n", "<leader>wh", "<c-w>h")
vim.keymap.set("n", "<leader>wl", "<c-w>l")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set({ "n", "v" }, "<S-h>", "^")
vim.keymap.set({ "n", "v" }, "<S-l>", "$")
