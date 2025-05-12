return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			lspconfig.clangd.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				filetypes = { "h", "c", "cpp", "cc", "objc", "objcpp" },
				flags = lsp_flags,
				cmd = { "clangd" },
				single_file_support = true,
				root_dir = lspconfig.util.root_pattern(
					".clangd",
					".clang-tidy",
					".clang-format",
					"compile_commands.json",
					"compile_flags.txt",
					"configure.ac",
					".git"
				),
			})

			-- lspconfig.arduino_language_server.setup({
			-- 	capabilities = capabilities,
			-- })

			-- lspconfig.ruff.setup({
			-- 	capabilities = capabilities,
			-- })
			--
			-- lspconfig.jsonls.setup({
			-- 	capabilities = capabilities,
			-- })
			--
			-- lspconfig.dockerls.setup({
			-- 	capabilities = capabilities,
			-- })
			--
			-- lspconfig.bashls.setup({
			-- 	capabilities = capabilities,
			-- })

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
					local opts = { buffer = ev.buf }
				end,
			})
		end,
	},
}
