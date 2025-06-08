return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "moll/vim-bbye",
        },
        config = function()
            require("bufferline").setup({
                options = {
                    mode = "buffers",
                    modified_icon = "●",
                    diagnostics = "nvim_lsp",

                    offsets = {
                        {
                            filetype = "neo-tree",
                            text = "File Explorer",
                            separator = true,
                        },
                    },

                    color_icons = true,
                    show_buffer_icons = true,
                    show_buffer_close_icons = false,
                    show_close_icon = false,
                    separator_style = "thin",
                },
            })
        end,
    },
}
