local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.lua_ls.setup({
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})


lspconfig.clangd.setup({
    capabilities = capabilities,
})


lspconfig.pyright.setup({
    capabilities = capabilities,
})


lspconfig.jsonls.setup({
    capabilities = capabilities,
})


lspconfig.dockerls.setup({
    capabilities = capabilities,
})


lspconfig.bashls.setup({
    capabilities = capabilities,
})


vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
        local opts = { buffer = ev.buf }
    end
})
