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
		-- sections = {
		-- 	-- {
		-- 	-- 	section = "terminal",
		-- 	-- 	-- cmd = "chafa lua/skull.jpg --format=symbols --symbols=vhalf --size=10x15 --stretch",
		-- 	-- 	cmd = "chafa lua/skull2.png --format=symbols --symbols=vhalf --size=25x25 --stretch",
		-- 	-- 	height = 25,
		-- 	-- 	padding = 1,
		-- 	-- },
		--
		-- 	-- pane = 2,
		-- 	{ sections = "header" },
		-- 	{ sections = "keys", gap = 1, padding = 1 },
		-- 	{ sections = "sturtup" },
		-- },

		sections = {
			{
				pane = 2,
				section = "terminal",
				cmd = "chafa image/crown2.png --format=symbols --symbols=vhalf --size 32x32 --stretch",
				indent = 4,
				height = 32,
				padding = 1,
			},
			{
				pane = 1,
				{ section = "header" },
				{ section = "keys", gap = 1, padding = 1 },
				-- { section = "startup" },
			},
		},
	},
})
