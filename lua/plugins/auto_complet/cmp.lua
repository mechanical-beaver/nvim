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
            -- local lspkind = require("lspkind")
            -- local mappings = require("core.Mapping.plugins").cmp_mapping

            cmp.setup({
                sources = {
                    { name = "nvim_lsp" },
                    { name = "path" },
                    { name = "buffer" },
                    { name = "luasnip" },
                },
                window = {
                    completion = cmp.config.window.bordered({
                        winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:PmenuSel",
                        col_offset = -3,
                        side_padding = 1,
                        max_width = 60,  -- ширина окна автодополнения
                        max_height = 15, -- высота окна автодополнения
                    }),
                },



                formatting = {
                    format = function(entry, vim_item)
                        local lspkind = require("lspkind")
                        -- Получаем иконку по типу
                        local icon = lspkind.symbolic(vim_item.kind, { mode = "symbol" })
                        -- Убираем аргументы из abbr (текст подсказки)
                        vim_item.abbr = vim_item.abbr:gsub("%b()", "")
                        -- Добавляем иконку перед текстом abbr
                        vim_item.abbr = icon .. " " .. vim_item.abbr
                        -- Можно настроить menu как в твоём конфиге
                        local menus = {
                            nvim_lsp = "[LSP]",
                            luasnip = "[Snip]",
                            buffer = "[Buf]",
                            path = "[Path]",
                        }
                        vim_item.menu = menus[entry.source.name] or ""
                        return vim_item
                    end,
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
