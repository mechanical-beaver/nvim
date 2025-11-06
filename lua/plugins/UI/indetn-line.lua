return {
    {
        "shellRaining/hlchunk.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("hlchunk").setup({
                indent = {
                    enable = true,
                },
                blank = {
                    enable = true,
                    chars = {
                        " ",
                    },
                    style = {
                        { bg = "#00ff11" },
                        { bg = "#000dff" },
                        { bg = "#ff00dd" },
                        { bg = "#ff0000" },
                    },
                },
            })
        end
    }
}
