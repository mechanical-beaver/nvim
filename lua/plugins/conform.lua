require("conform").setup({
    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },

    formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },

        c = { "clangd_format" },
        cpp = { "clangd_format" },
        h = { "clangd_format" },
    }
})
