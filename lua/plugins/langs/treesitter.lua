return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",

		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},

		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"lua",
					"c",
					"cpp",
					"python",
				},

				textobjects = {
					select = {
						enable = true,
						lookahead = true,
						keymaps = {},
					},
				},

				auto_install = true,
				sync_install = false,
				highlight = { enable = true },
				additional_vim_regex_highlighting = false,
			})
		end,
	},
}
