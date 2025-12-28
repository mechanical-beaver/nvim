return {
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local on_attach = function(client, bufnr)
				client.handlers["textDocument/publishDiagnostics"] = function() end
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end

			vim.lsp.config("clangd", {
				settings = {
					["clangd"] = {},
				},
				on_attach = on_attach,
			})

			vim.lsp.config("lua_ls", {
				settings = {
					["lua_ls"] = {},
				},
				on_attach = on_attach,
			})

			vim.lsp.config("ruff", {
				settings = {
					["ruff"] = {},
				},
				on_attach = on_attach,
			})

			vim.lsp.enable("lua_ls")
			vim.lsp.enable("clangd")
			vim.lsp.enable("ruff")

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
				end,
			})
		end,
	},
}
