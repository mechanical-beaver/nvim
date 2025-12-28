return {
	{
		"nvim-mini/mini.nvim",
		version = "*",
		config = function()
			require("plugins.mini.mini_word")
			require("plugins.mini.mini_pairs")
			require("plugins.mini.mini_comment")
			require("plugins.mini.mini_move")
			require("plugins.mini.mini_indents")
		end,
	},
}
