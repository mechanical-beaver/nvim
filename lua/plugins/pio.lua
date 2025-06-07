return {
    {
        "anurag3301/nvim-platformio.lua",
        config = function()
            require("platformio").setup({
                lsp = "clangd",
            })
        end,
    },
}
