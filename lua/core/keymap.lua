local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local tbl = vim.tbl_extend

vim.g.mapleader = " "
vim.g.maplocalleader = ","

map("n", "<C-s>", ":w<CR>", opts)
map("i", "<C-s>", "<Esc>:w<CR>a", opts)

map("n", "<C-c>", '"+y', opts)
map("n", "<C-x>", '"+d', opts)
map("n", "<C-v>", '"+p', opts)

map("v", "<C-c>", '"+y', opts)
map("v", "<C-x>", '"+d', opts)
map("v", "<C-v>", '"+p', opts)
map("v", "p", '"_dP', opts)

map("i", "<C-v>", '<Esc>"+pa', opts)

map("n", "<C-z>", "u", opts)
map("n", "<C-S-z>", "<C-r>", opts)
map("n", "<leader>r", "<C-r>", opts)

map("i", "<C-z>", "<C-o>u", opts)
map("i", "<C-S-z>", "<C-o><C-r>", opts)

map("v", "<C-z>", "<Esc>u", opts)
map("v", "<C-S-z>", "<Esc><C-r>", opts)

map("n", "dd", '"_dd', opts)
map("n", "d", '"_d', opts)
map("n", "x", '"_x', opts)
map("n", "c", '"_c', opts)
map("n", "C", '"_C', opts)
map("n", "D", '"_D', opts)

map("v", "d", '"_d', opts)
map("v", "x", '"_x', opts)
map("v", "c", '"_c', opts)

map("n", "<C-a>", "ggVG", opts)
map("n", "<C-f>", ":Telescope find_files<CR>", opts)

map("n", "<C-Left>", "bi", opts)
map("n", "<C-Right>", "ea", opts)
map("n", "<C-Up>", "<Home>", opts)
map("n", "<C-Down>", "<End>", opts)

map("i", "<C-Left>", "<Esc>bi", opts)
map("i", "<C-Right>", "<Esc>ea", opts)
map("i", "<C-Up>", "<Esc><Home>", opts)
map("i", "<C-Down>", "<Esc><End>", opts)

map("n", "<S-Left>", "vhi", opts)
map("n", "<S-Right>", "vl", opts)
map("n", "<S-Up>", "Vk", opts)
map("n", "<S-Down>", "Vj", opts)

map("v", "<S-Left>", "h", opts)
map("v", "<S-Right>", "l", opts)
map("v", "<S-Up>", "k", opts)
map("v", "<S-Down>", "j", opts)

map("i", "<S-Left>", "<Esc>vhi", opts)
map("i", "<S-Right>", "<Esc>vl", opts)
map("i", "<S-Up>", "<Esc>Vk", opts)
map("i", "<S-Down>", "<Esc>Vj", opts)

map("n", "<C-S-Left>", "vbi", opts)
map("n", "<C-S-Right>", "ve", opts)
map("n", "<C-S-Up>", "v0", opts)
map("n", "<C-S-Down>", "v$", opts)

map("v", "<C-S-Left>", "b", opts)
map("v", "<C-S-Right>", "e", opts)
map("v", "<C-S-Up>", "0", opts)
map("v", "<C-S-Down>", "$", opts)

map("i", "<C-S-Left>", "<Esc>vbi", opts)
map("i", "<C-S-Right>", "<Esc>ve", opts)
map("i", "<C-S-Up>", "<Esc>v0", opts)
map("i", "<C-S-Down>", "<Esc>v$", opts)

map("i", "<C-BS>", "<Esc>dbi", opts)
map("i", "<C-Delete>", "<Esc>dea", opts)

map("n", "<C-BS>", "db", opts)
map("n", "<C-Delete>", "de", opts)

map({ "n", "v", "i" }, "<M-Down>", "<cmd>:wincmd j<CR>", opts)
map({ "n", "v", "i" }, "<M-Up>", "<cmd>:wincmd k<CR>", opts)
map({ "n", "v", "i" }, "<M-Left>", "<cmd>:wincmd h<CR>", opts)
map({ "n", "v", "i" }, "<M-Right>", "<cmd>:wincmd l<CR>", opts)

------------------Neo Tree
map("n", "<leader>e", ":Neotree toggle<CR>", tbl("force", opts, { desc = "Toggle file explorer" }))

------------------buffers
map("n", "<Tab>", ":BufferLineCycleNext<CR>", tbl("force", opts, { desc = "Next buffer" }))
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", tbl("force", opts, { desc = "Prev buffer" }))
map("n", "<C-q>", ":Bdelete<CR>", tbl("force", opts, { desc = "Close buffer" }))

------------------toggleterm
-- map("n", "<C->", ":ToggleTerm<CR>")
