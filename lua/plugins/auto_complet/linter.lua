return {
    {
        "mfussenegger/nvim-lint",
        ft = require("core.ft"),
        config = function()
            local lint = require("lint")

            lint.linters_by_ft = {
                -- lua = { "selene" },
                -- cpp = { "cpplint" },
                -- c = { "cpplint" },
            }

            local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

            vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
                group = lint_augroup,
                callback = function()
                    lint.try_lint()
                end
            })
        end
    },
}
