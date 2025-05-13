return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			{ "williamboman/mason-lspconfig.nvim" },
			-- { "jay-babu/mason-null-ls.nvim" },
		},
		config = function()
			local mason = require("mason")
			local mason_lspconfig = require("mason-lspconfig")
			-- local mason_null_ls = require("mason-null-ls")

			mason.setup()

			mason_lspconfig.setup({
				ensure_installed = {
					"lua_ls", -- Lua
					"clangd", -- C/C++
				},
			})

			-- mason_null_ls.setup({
			-- 	ensure_installed = {
			-- 		"stylua", --Lua formatter
			--
			-- 		"clang-format", -- C/C++ formatter
			-- 		"cpplint",
			-- 	},
			-- })
		end,
	},
}
