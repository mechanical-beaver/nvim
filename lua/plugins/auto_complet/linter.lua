return {
    {
        "mfussenegger/nvim-lint",
        config = function()
            local lint = require("lint")

            lint.linters_by_ft = {
                -- lua = { "selene" },
                -- cpp = { "cpplint" },
                -- c = { "cpplint" },
            }

            -- lint.linters.cpplint = {
            --     cmd = "cpplint",
            --     stdin = false,
            --     args = {},
            --     stream = "stderr",
            --     ignore_exitcode = true,
            --     parser = require("lint.parser").from_errorformat([[%f:%l:  %m,]])
            -- }

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
