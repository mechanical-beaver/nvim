return {
    {
        "folke/snacks.nvim",
        lazy = false,
        priority = 1000,

        config = function()
            require("snacks").setup({
                dashboard = {
                    enabled = true,

                    preset = {
                        ---@type fun(cmd:string, opts:table)|nil
                        pick = nil,
                        ---@type snacks.dashboard.Item[]
                        keys = {
                            {
                                icon = "",
                                key = "f",
                                desc = "Find File",
                                action = ":lua Snacks.dashboard.pick('files')",
                            },
                            {
                                icon = "",
                                key = "r",
                                desc = "Recent Files",
                                action = ":lua Snacks.dashboard.pick('oldfiles')",
                            },
                            { icon = "", key = "p", desc = "Projects", action = ":Telescope projects" },
                            { icon = "", key = "s", desc = "Sessions", action = ":Telescope persisted" },
                            {
                                icon = "󰒲",
                                key = "L",
                                desc = "Lazy",
                                action = ":Lazy",
                                enabled = package.loaded.lazy ~= nil,
                            },
                            { icon = "󰠥", key = "M", desc = "Mason", action = ":Mason" },
                            { icon = "", key = "q", desc = "Quit", action = ":qa" },
                        },
                        header = [[
 ▄▀▀▄ ▄▄   ▄▀▀█▄   ▄▀▀▀▀▄
█  █   ▄▀ ▐ ▄▀ ▀▄ █ █   ▐
▐  █▄▄▄█    █▄▄▄█    ▀▄
   █   █   ▄▀   █ ▀▄   █
  ▄▀  ▄▀  █   ▄▀   █▀▀▀
 █   █    ▐   ▐    ▐
 ▐   ▐
 ]]

                        --                         header = [[
                        -- /\\\        /\\\     /\\\\\\\\\\       /\\\\\\\\\\\
                        -- \/\\\       \/\\\   /\\\///////\\\    /\\\/////////\\\
                        --  \/\\\       \/\\\  /\\\        /\\\  \//\\\      \///
                        --   \/\\\\\\\\\\\\\\\ \/\\\       \/\\\   \////\\\
                        --    \/\\\/////////\\\ \/\\\\\\\\\\\\\\\      \////\\\
                        --     \/\\\       \/\\\ \/\\\/////////\\\         \////\\\
                        --      \/\\\       \/\\\ \/\\\       \/\\\  /\\\      \//\\\
                        --       \/\\\       \/\\\ \/\\\       \/\\\ \///\\\\\\\\\\\/
                        --        \///        \///  \///        \///    \///////////    ]]

                    },

                    sections = {
                        {
                            pane = 1,
                            { section = "header" },
                            { section = "keys",  gap = 1, padding = 1 },
                            -- { section = "startup" },
                        },
                    },
                },
            })
        end,
    },
}
