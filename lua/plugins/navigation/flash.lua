return {
    "folke/flash.nvim",
    opts = {
        modes = {
            search = {
                enabled = false,
            },
            char = {
                enabled = true,
                jump_labels = true,
            },
        },
        highlight = {
            backdrop = true,
            matches = true,
        },
    },
    keys = require("core.Mapping.plugins").flash_mapping,
}
