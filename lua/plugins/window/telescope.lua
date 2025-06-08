return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "ahmedkhalf/project.nvim",
        },
        event = { "VimEnter" },
        config = function()
            require("telescope").load_extension("projects")
            -- require("telescope").load_extension("persisted")

            require("telescope").setup({
                defaults = {},
                extensions = {
                    -- persisted = {
                    --     layout_config = { width = 0.55, height = 0.55 },
                    -- },
                },
            })

            require("project_nvim").setup({
                detection_methods = { "pattern" },
                patterns = { ".git", "src" },
            })
        end,
    },
}
