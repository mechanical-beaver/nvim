local M = {}

M.commands_mapping = function()
    ------------------Neo Tree
    vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle file explorer" })

    ------------------Toggle Term
    vim.keymap.set("n", [[<C-\>]], ":ToggleTerm<CR>", { desc = "Toggle Terminal" })
    vim.keymap.set("t", "<esc>", [[<C-\><C-n>]])

    ------------------buffers
    vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
    vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
    vim.keymap.set("n", "<leader>x", ":Bdelete<CR>", { desc = "Close buffer" })
end

------------------cmp
M.cmp_mapping = function()
    local cmp = require("cmp")

    return {
        ["<C-p>"] = nil,

        ["<Down>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<Up>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { "i", "s" }),

        ["<CR>"] = cmp.mapping.confirm({ select = true }),

        ["<C-e>"] = cmp.mapping(function()
            if cmp.visible() then
                cmp.close()
            else
                cmp.complete()
            end
        end, { "i", "s" }),

        -- ['<Down>'] = cmp.mapping.scroll_docs(-4),
        -- ['<Up>'] = cmp.mapping.scroll_docs(4),
    }
end

------------------comments
M.comments_mapping = {
    toggler = {
        line = "cc",
    },
    opleader = {
        line = "c",
    },
}

M.flash_mapping = {
    {
        "s",
        mode = { "n", "x", "o" },
        function() require("flash").jump() end,
        desc = "Flash Jump"
    },
    {
        "S",
        mode = { "n", "x", "o" },
        function() require("flash").treesitter() end,
        desc = "Flash Treesitter"
    },
    {
        "f",
        mode = { "n", "x", "o" },
        function() require("flash").jump({ search = { mode = "char" } }) end,
        desc = "Flash forward"
    },
    {
        "F",
        mode = { "n", "x", "o" },
        function() require("flash").jump({ search = { mode = "char", reverse = true } }) end,
        desc = "Flash backward"
    },
}

return M
