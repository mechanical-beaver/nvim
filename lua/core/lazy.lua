local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		#"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.init_plug"),

	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false,
		priority = 1000,
	},

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
	},

	{ "L3MON4D3/LuaSnip" },

	{ "olimorris/persisted.nvim" },
})
