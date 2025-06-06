vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

local termfeatures = vim.g.termfeatures or {}
termfeatures.osc52 = false
vim.g.termfeatures = termfeatures

vim.diagnostic.config({
    virtual_text = {
        source = "if_many",
    },
    signs = true,
    underline = true,
    update_in_insert = false,
})

--vim.o.termguicolors = true
--vim.o.cursorline = true
--vim.o.number = true

if vim.fn.argc() == 0 then
    vim.cmd("Bdelete")
end
