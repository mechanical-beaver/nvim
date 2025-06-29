local M = {}

M.commands_mapping = function()
    local keyset = vim.keymap.set
    local opts   = { noremap = true, silent = true }
    local tbl    = vim.tbl_extend

    ------------------Neo Tree
    keyset("n", "<leader>e", ":Neotree toggle<CR>", tbl("force", opts, { desc = "Toggle file explorer" }))

    ------------------Toggle Term
    keyset("n", [[<C-\>]], ":ToggleTerm<CR>", tbl("force", opts, { desc = "Toggle Terminal" }))
    keyset("t", "<esc>", [[<C-\><C-n>]])

    ------------------buffers
    keyset("n", "<Tab>", ":BufferLineCycleNext<CR>", tbl("force", opts, { desc = "Next buffer" }))
    keyset("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", tbl("force", opts, { desc = "Prev buffer" }))
    keyset("n", "<leader>x", ":Bdelete<CR>", tbl("force", opts, { desc = "Close buffer" }))

    ------------------hop
    keyset("n", "<leader>f1", ":HopChar1<CR>", tbl("force", opts, { desc = "Select one char to jump" }))
    keyset("n", "<leader>f2", ":HopChar2<CR>", tbl("force", opts, { desc = "Select two chars to jump" }))
    keyset("n", "<leader>fw", ":HopWord<CR>", tbl("force", opts, { desc = "Choose a word to jump" }))
    keyset("n", "<leader>fl", ":HopLine<CR>", tbl("force", opts, { desc = "Select a line to jump" }))

    ------------------comments
    keyset("i", "<M-/>", function()
        local api = require("Comment.api")
        local row = vim.api.nvim_win_get_cursor(0)[1]
        api.toggle.linewise.current(row)
    end, { desc = "Toggle comment in Insert mode (safely)" })

    ------------------snacks
    keyset("n", "<leader>dd", "<cmd>lua Snacks.dashboard()<CR>", tbl("force", opts, { desc = "Open dashboard" }))
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

    }
end

------------------comments
M.comments_mapping = {
    toggler = {
        line = "//",
    },
    opleader = {
        line = "/",
    },
}

return M
