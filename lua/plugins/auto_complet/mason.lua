return {
    {
        "williamboman/mason.nvim",
        dependencies = {
            { "williamboman/mason-lspconfig.nvim" },
            { "WhoIsSethDaniel/mason-tool-installer.nvim" }
        },
        cmd = { "Mason", "MasonInstall", "MasonUpdate" },
        config = function()
            local mason = require("mason")
            local mason_lspconfig = require("mason-lspconfig")
            local auto_inst = require("mason-tool-installer")

            mason.setup()

            mason_lspconfig.setup({
                ensure_installed = {
                    "lua_ls", -- Lua
                    "clangd", -- C/C++
                },
            })

            auto_inst.setup({
                ensure_installed = {
                    --Lua
                    "stylua",
                    "selene",

                    --C/C++
                    "clang-format",
                    "cpplint",

                }
            })
        end,
    },
}
