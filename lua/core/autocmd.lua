vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "txt", "text" },
	callback = function()
		vim.treesitter.stop()

		vim.lsp.stop_client(vim.lsp.get_clients())
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.ui",
	callback = function()
		local ui_app = "designer"
		local file = vim.fn.expand("%:p")
		vim.fn.jobstart({ ui_app, file }, { detach = true })
		vim.cmd("bdelete!")
	end,
})
