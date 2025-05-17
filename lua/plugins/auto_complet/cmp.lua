return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-buffer" },
            { "saadparwaiz1/cmp_luasnip" },
            { "onsails/lspkind.nvim" },
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            local lspkind = require("lspkind")
            -- local mappings = require("core.Mapping.plugins").cmp_mapping

            cmp.setup({
                sources = {
                    { name = "nvim_lsp" },
                    { name = "path" },
                    { name = "buffer" },
                    { name = "luasnip" },
                },

                formatting = {
                    format = lspkind.cmp_format({
                        mode = "symbol_text",
                        maxwidth = {
                            menu = 50,
                            abbr = 50,
                        },
                        ellipsis_char = "...",
                        show_labelDetails = true,
                        menu = {
                            nvim_lsp = "[LSP]",
                            luasnip = "[Snip]",
                            buffer = "[Buf]",
                            path = "[Path]",
                        },
                    }),
                },

                mapping = require("core.Mapping.plugins").cmp_mapping(),

                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
            })
        end,
    },
}
