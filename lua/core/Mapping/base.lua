vim.g.mapleader = " "

local keyset = vim.keymap.set
local opts = { noremap = true, silent = true }

keyset("n", "<leader>w", ":w<CR>", opts)

keyset({ "n", "v", "i" }, "<C-Down>", "<cmd>:wincmd j<CR>", opts)
keyset({ "n", "v", "i" }, "<C-Up>", "<cmd>:wincmd k<CR>", opts)
keyset({ "n", "v", "i" }, "<C-Left>", "<cmd>:wincmd h<CR>", opts)
keyset({ "n", "v", "i" }, "<C-Right>", "<cmd>:wincmd l<CR>", opts)

keyset("n", "<C-c>", '"+yy')
keyset("n", "<C-v>", '"+p')
keyset("v", "<C-c>", '"+y')
keyset("v", "<C-v>", '"+p')
keyset("i", "<C-v>", "<C-r>+")

keyset({ "n", "v", "i" }, "<S-Down>", "<Down><Down><Down><Down><Down>")
keyset({ "n", "v", "i" }, "<S-Up>", "<Up><Up><Up><Up><Up>")

keyset("i", "<C-r>", "<cmd>redo<CR>")
keyset("i", "<C-z>", "<cmd>undo<CR>")
