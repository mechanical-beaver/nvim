return {
    {
        "stevearc/conform.nvim",
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
