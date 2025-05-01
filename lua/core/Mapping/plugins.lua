------------------Neo Tree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {desc = "Toggle file explorer"})

------------------Toggle Term
vim.keymap.set("n","<leader>tt", ":ToggleTerm<CR>", {desc = "Toggle Terminal"})

------------------cmp
local cmp = require("cmp")

return {
    ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

    ['<Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        else
            fallback()
        end
    end, { "i", "s" }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        else
            fallback()
        end
    end, { "i", "s" }),

    ['<CR>'] = cmp.mapping.confirm({ select = true }),


    ['<C-e>'] = cmp.mapping(function()
        if cmp.visible() then
            cmp.close()
        else
            cmp.complete()
        end
    end, { 'i', 's' }),

    -- ['<Down>'] = cmp.mapping.scroll_docs(-4),
    -- ['<Up>'] = cmp.mapping.scroll_docs(4),
}
