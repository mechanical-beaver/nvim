return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 20,
				-- 	-- direction = "horizontal",
				direction = "float",
				close_on_exit = true,
				show_numbers = true,
				width = 80,
				start_in_insert = true,
				persist_size = true,
				open_mapping = [[<c-\>]],
				hide_numbers = true,
				shell = "pwsh",
				float_opts = {
					border = "curved",
					winblend = 0,
					highlights = {
						border = "Normal",
						background = "Normal",
					},
				},
			})

			function _G.set_terminal_keymaps()
				local opts = { noremap = true }
				vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
			end

			vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
		end,
	},
}
