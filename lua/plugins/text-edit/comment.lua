return {
    {
        "numToStr/Comment.nvim",
        ft = require("core.ft"),
        config = function()
            require("Comment").setup(require("core.Mapping.plugins").comments_mapping)
        end,
    },
}
