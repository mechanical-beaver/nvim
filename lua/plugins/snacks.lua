require("snacks").setup({
	dashboard = {
		enabled = true,

		preset = {
			---@type fun(cmd:string, opts:table)|nil
			pick = nil,
			---@type snacks.dashboard.Item[]
			keys = {
				{ icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
				{ icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
				{ icon = "", key = "p", desc = "Projects", action = ":Telescope projects" },
				{ icon = " ", key = "s", desc = "Sessions", action = ":Telescope persisted" },
				-- {icon = "", key = "u", desc = "PlatformIO", action ""}
				{ icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
				{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
			},
			header = [[
██╗  ██╗ █████╗ ███████╗
██║  ██║██╔══██╗██╔════╝
███████║███████║███████╗
██╔══██║██╔══██║╚════██║
██║  ██║██║  ██║███████║
╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝]],
		},

		sections = {
			-- {
			-- 	pane = 2,
			-- 	section = "terminal",
			-- 	cmd = "chafa C:/Users/ASP/AppData/Local/nvim/image/doomguy.png --format=symbols --symbols=vhalf --size 26x32 --stretch",
			-- 	indent = 4,
			-- 	height = 32,
			-- 	padding = 1,
			-- },
			{
				pane = 1,
				{ section = "header" },
				{ section = "keys", gap = 1, padding = 1 },
				-- { section = "startup" },
			},
		},
	},
})
