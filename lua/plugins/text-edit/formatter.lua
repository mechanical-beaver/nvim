return {
    {
        "stevearc/conform.nvim",
        ft = require("core.ft"),
        config = function()
            require("conform").setup({
                format_on_save = {
                    lsp_fallback = true,
                    timeout_ms = 500,
                },

                formatting_by_tf = {
                    lua = { "stylua" },
                    c = { "clang_format" },
                    cpp = { "clang_format" },
                },
            })
        end,
    },
}
