local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")
local mappings = require("core.Mapping.plugins")

cmp.setup({
    sources = 
    {
        {name = "nvim_lsp"},
        {name = "path"},
        {name = "buffer"},
        {name = "luasnip"},
    },

    formatting = 
    {
        format = lspkind.cmp_format({
            mode = 'symbol_text',
            maxwidth = 
            {
                menu = 50,
                abbr = 50,
            },
            ellipsis_char = '...',
            show_labelDetails = true,
            menu = 
            {
                nvim_lsp = "[LSP]",
                luasnip = "[Snip]",
                buffer = "[Buf]",
                path = "[Path]",
            },
        }),
    },

    mapping = mappings,

    snippet =
    {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    

})
