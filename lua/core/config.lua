vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.autoindent = false
vim.opt.smartindent = false
vim.opt.cindent = false


-- vim.opt.viewoptions:remove("curdir")
-- vim.cmd([[
--     augroup remember_folds
--     autocmd!
--         autocmd BufWinLeave * silent! mkview
--         autocmd BufWinEnter * silent! loadview
--     augroup END
-- ]])

local termfeatures = vim.g.termfeatures or {}
termfeatures.osc52 = false
vim.g.termfeatures = termfeatures

vim.opt.foldcolumn = '1'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

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

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*",
    callback = function()
        vim.cmd("silent! mkview")
    end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = "*",
    callback = function()
        vim.cmd("silent! loadview")
    end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.html", "*.zebar", "*.jsx", "*.js" },
    callback = function()
        vim.bo.filetype = "typescriptreact"
    end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.py",
    callback = function()
        require("conform").format({ async = false, lsp_fallback = true })
    end,
})
