local M = {}

M.Lazy = {
    require("plugins.UI.buffers"),
    require("plugins.UI.gitsigns"),
    require("plugins.UI.indetn-line"),
    require("plugins.UI.lualine"),
    require("plugins.UI.modicator"),
    require("plugins.UI.noice"),
    require("plugins.UI.treesitter"),

    require("plugins.auto_complet.cmp"),
    require("plugins.auto_complet.linter"),
    require("plugins.auto_complet.lsp"),
    require("plugins.auto_complet.mason"),
    require("plugins.auto_complet.neodev"),

    require("plugins.navigation.snacks"),
    require("plugins.navigation.hop"),

    require("plugins.text-edit.autopairs"),
    require("plugins.text-edit.comment"),
    require("plugins.text-edit.formatter"),

    require("plugins.window.neo-tree"),
    require("plugins.window.neogit"),
    require("plugins.window.telescope"),
    require("plugins.window.term"),

    require("plugins.pio"),
    require("plugins.witch"),

    require("core.colors"),
}

return M
