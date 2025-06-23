return {
    {
        "smoka7/hop.nvim",
        version = "*",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("hop").setup({})
        end
    },
}
