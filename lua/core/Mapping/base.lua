vim.g.mapleader = " "

local keyset = vim.keymap.set
local opts = { noremap = true, silent = true }

keyset("n", "<leader>w", ":w<CR>", opts)

keyset({ "n", "v", "i" }, "<C-Down>", "<Esc> :wincmd j<CR>", opts)
keyset({ "n", "v", "i" }, "<C-Up>", "<Esc> :wincmd k<CR>", opts)
keyset({ "n", "v", "i" }, "<C-Left>", "<Esc> :wincmd h<CR>", opts)
keyset({ "n", "v", "i" }, "<C-Right>", "<Esc> :wincmd l<CR>", opts)

keyset("n", "<C-y><C-y>", '"+yy')
keyset("n", "<C-p><C-p>", '"+p')
keyset("v", "<C-y><C-y>", '"+y')
keyset("v", "<C-p><C-p>", '"+p')
keyset("i", "<C-p><C-p>", "<C-r>+")

keyset({ "n", "v", "i" }, "<S-Down>", "<Down><Down><Down><Down><Down>")
keyset({ "n", "v", "i" }, "<S-Up>", "<Up><Up><Up><Up><Up>")

keyset("i", "<C-r>", "<C-o><C-r>")
keyset("i", "<C-u>", "<Esc>ua")
