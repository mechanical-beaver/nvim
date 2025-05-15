return {
    require("plugins.UI.buffers"),
    require("plugins.UI.lualine"),
    require("plugins.UI.modicator"),
    require("plugins.UI.noice"),
    require("plugins.UI.treesitter"),

    require("plugins.auto_complet.cmp"),
    require("plugins.auto_complet.lsp"),
    require("plugins.auto_complet.mason"),
    require("plugins.auto_complet.neodev"),

    require("plugins.text-edit.autopairs"),
    require("plugins.text-edit.comment"),
    -- require("plugins.text-edit.none-ls"),
    require("plugins.text-edit.formatter"),
    require("plugins.text-edit.linter"),

    require("plugins.window.neo-tree"),
    require("plugins.window.projects"),
    require("plugins.window.telescope"),
    require("plugins.window.term"),

    require("plugins.pio"),
    require("plugins.snacks"),
}
