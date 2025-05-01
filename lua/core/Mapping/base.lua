vim.g.mapleader = " "


-- LSP --
vim.keymap.set('n', '<leader>lD', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>ld', vim.diagnostic.setloclist)

vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)

-- vim.keymap
--     .set('n', '<Leader>sa', vim.lsp.buf.add_workspace_folder, opts)
-- vim.keymap.set('n', '<Leader>sr', vim.lsp.buf.remove_workspace_folder,
--                opts)
-- vim.keymap.set('n', '<Leader>sl', function()
--     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- end, opts)
-- vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
vim.keymap.set('n', '<Leader>lr', vim.lsp.buf.rename, opts)
vim.keymap.set({'n', 'v'}, '<Leader>la', vim.lsp.buf.code_action, opts)
-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
vim.keymap.set('n', '<Leader>lf',
                function() vim.lsp.buf.format {async = true} end, opts)

