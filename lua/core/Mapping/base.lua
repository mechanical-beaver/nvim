vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<C-Down>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-Up>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-Left>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-Right>", ":wincmd l<CR>")
