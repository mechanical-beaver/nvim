return {
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup(require("core.Mapping.plugins").comments_mapping)
		end,
	},
}
