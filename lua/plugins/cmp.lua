local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
    sources = {
        {name = "nvim_lsp"},
        { name = "path"},
        { name = "buffer"},
        { name = "luasnip"},
    },

    formatting = {
        format = function(entry, vim_item)
            vim_item.kind = string.format("%s %s", entry.source.name, vim_item.kind)
            return vim_item
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),  -- Подтвердить выбранное
        ["<C-Space>"] = cmp.mapping.complete(),  -- Вызов автозавершения
    }),

    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
})
