local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	{
	"nvim-neo-tree/neo-tree.nvim",
    	branch = "v3.x",
		dependencies = {
            "nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons",
    		"MunifTanjim/nui.nvim",
 		    "s1n7ax/nvim-window-picker",
        },
		config = function()
	        require("plugins.neo-tree")
        end,
  	},

  	{
    		"neovim/nvim-lspconfig",
    		dependencies = {
      			"williamboman/mason.nvim", 
	    		"williamboman/mason-lspconfig.nvim" 
	    	},
  	},

  	{"nvim-treesitter/nvim-treesitter"},
 	
	{"nyoom-engineering/oxocarbon.nvim"},

	{"hrsh7th/nvim-cmp"},

    	{"hrsh7th/cmp-nvim-lsp"},

    	{"hrsh7th/cmp-path"},

    	{"saadparwaiz1/cmp_luasnip"},

    	{"L3MON4D3/LuaSnip"},

    	{"neovim/nvim-lspconfig"},

    	{"hrsh7th/cmp-buffer"},
})
