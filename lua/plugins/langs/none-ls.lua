return {
    "jay-babu/mason-null-ls.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "nvimtools/none-ls.nvim",
        "nvimtools/none-ls-extras.nvim",
    },

    config = function()
        require("mason-null-ls").setup({
            ensure_installed = {
                -- c/c++
                "clang-format",
                "cpplint",

                -- lua
                "stylua",
                "selene",

                -- python
                "ruff",
            },

            automatic_installation = true,

            methods = {
                diagnostics = true,
                formatting = true,
                code_actions = true,
                completion = true,
                hover = true,
            },

            handlers = {
            },
        })

        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- c/c++
                null_ls.builtins.formatting.clang_format,
                require("none-ls.diagnostics.cpplint"),

                -- lua
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.diagnostics.selene,

                --python
                require("none-ls.formatting.ruff"),
                require("none-ls.diagnostics.ruff"),
            },
        })
    end,
}
