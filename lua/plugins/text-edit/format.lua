return {
    {
        "stevearc/conform.nvim",
        event = "BufReadPre", -- 🔥 вместо ft = require("core.ft")
        config = function()
            local conform = require("conform")

            conform.setup({
                format_on_save = {
                    lsp_fallback = true,
                    timeout_ms = 500,
                },
                formatters_by_ft = {
                    lua = { "stylua" },
                    c = { "clang_format" },
                    cpp = { "clang_format" },
                    javascript = { "prettierd", "prettier" },
                    typescript = { "prettierd", "prettier" },
                    javascriptreact = { "prettierd", "prettier" },
                    typescriptreact = { "prettierd", "prettier" },
                    html = { "prettierd", "prettier" },
                    css = { "prettierd", "prettier" },
                    python = { "autopep8" },
                },
            })
        end,
    },
}


-- return {
--     {
--         "stevearc/conform.nvim",
--         ft = require("core.ft"),
--         config = function()
--             require("conform").setup({
--                 format_on_save = {
--                     lsp_fallback = true,
--                     timeout_ms = 500,
--                 },
--
--                 formatting_by_ft = {
--                     lua = { "stylua" },
--                     c = { "clang_format" },
--                     cpp = { "clang_format" },
--                     javascript = { "prettierd", "prettier" },
--                     typescript = { "prettierd", "prettier" },
--                     javascriptreact = { "prettierd", "prettier" },
--                     typescriptreact = { "prettierd", "prettier" },
--                     html = { "prettierd", "prettier" },
--                     css = { "prettierd", "prettier" },
--                     python = { "black" }
--                 },
--             })
--         end,
--     },
-- }
