return {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
        require("ufo").setup({
            provider_selector = function(_, filetype, _)
                local ft_map = {
                    html = { "treesitter", "indent" },
                    css = { "treesitter", "indent" },
                    javascript = { "treesitter", "indent" },
                    lua = { "treesitter", "indent" },
                }
                return ft_map[filetype] or { "lsp", "indent" }
            end,

            preview = {
                win_config = {
                    border = "rounded",
                    winblend = 12,
                },
            },
        })
    end
}
