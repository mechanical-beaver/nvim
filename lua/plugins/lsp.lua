local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup{}
lspconfig.clangd.setup{}
lspconfig.pyright.setup {}
lspconfig.jsonls.setup{}
lspconfig.dockerls.setup{}
lspconfig.bashls.setup{}

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
        local opts = {buffer = ev.buf}
    end
})