return {
    {
        "mfussenegger/nvim-lint",
        config = function()
            local lint = require("lint")

            lint.linters_by_ft = {
                lua = { "selene" },
                cpp = { "cpplint" },
                c = { "cpplint" },
            }

            lint.linters.cpplint = {
                cmd = "cpplint",
                stdin = false,          -- обязательно false: cpplint не читает stdin
                args = {},
                stream = "stderr",      -- cpplint пишет в stderr
                ignore_exitcode = true, -- cpplint возвращает код 1 даже при варнингах
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
