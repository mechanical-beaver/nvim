return {
    {
        "nvim-treesitter/nvim-treesitter",
        ft = require("core.ft"),
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "c",
                    "lua",
                    "vim",
                    "cpp",
                    "ini",
                    "json",
                    "html",
                    "css",
                    "javascript",
                    "typescript",
                    "tsx",
                    "python",
                },
                sync_install = false,
                auto_install = true,

                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },

            })
        end,
    },
}
