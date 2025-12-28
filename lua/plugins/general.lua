local M = {}

-- alpha-nvim,

M.Lazy = {
	require("plugins.mini.mini"),

	require("plugins.window.neo-tree"),
	require("plugins.window.telescope"),
	require("plugins.window.toggleterm"),

	require("plugins.UI.lualine"),
	require("plugins.UI.noice"),
	require("plugins.UI.theme"),
	require("plugins.UI.folds"),
	require("plugins.UI.tabs"),

	require("plugins.dashboard.alpha"),

	require("plugins.langs.cmp"),
	require("plugins.langs.mason"),
	require("plugins.langs.lsp"),
	require("plugins.langs.none-ls"),
	require("plugins.langs.treesitter"),
	require("plugins.langs.neodev"),
	require("plugins.langs.pio"),

	require("plugins.langs.dap.dap"),
	require("plugins.langs.dap.dap_ui"),
	require("plugins.langs.dap.dap_vt"),
	require("plugins.langs.dap.langs.debugpy"),
}

return M
