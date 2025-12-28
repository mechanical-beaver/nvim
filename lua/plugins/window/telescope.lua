return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",

		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-lua/popup.nvim",

			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"jvgrootveld/telescope-zoxide",
			"debugloop/telescope-undo.nvim",
			"cljoly/telescope-repo.nvim",
			"nvim-telescope/telescope-live-grep-args.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"nvim-telescope/telescope-github.nvim",
			"nvim-telescope/telescope-symbols.nvim",
			"ahmedkhalf/project.nvim",
		},

		config = function()
			local telescope = require("telescope")

			local load = telescope.load_extension
			local lga_actions = require("telescope-live-grep-args.actions")

			telescope.setup({
				extensions = {

					zoxide = {
						prompt_title = "[ Walking on the shoulders of TJ ]",
						mappings = {},
					},

					undo = {},

					repo = {},

					live_grep_args = {
						auto_quoting = true,
						mappings = {
							i = {
								["<C-k>"] = lga_actions.quote_prompt(),
								["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
								["<C-space>"] = lga_actions.to_fuzzy_refine,
							},
						},
					},

					fzf = {
						fuzzy = true,
						override_generic_sorter = true,
						override_file_sorter = true,
						case_mode = "smart_case",
					},
				},
			})

			load("fzf")
			load("zoxide")
			load("undo")
			load("repo")
			load("live_grep_args")
			load("ui-select")
			load("gh")
			load("projects")

			require("project_nvim").setup({
				{
					manual_mode = false,
					detection_methods = { "pattern" },
					patterns = { ".git", "=src", "=venv", ".ini" },
					ignore_lsp = {},
					exclude_dirs = {},
					show_hidden = false,
					silent_chdir = true,
					scope_chdir = "global",
					-- datapath = vim.fn.stdpath("data"),
					-- telescope.extensions.project.project({
					-- 	attach_mappings = function(prompt_bufnr, map)
					-- 		map("i", "<CR>", change_working_directory)
					-- 		return true
					-- 	end,
					-- }),
				},
			})
		end,
	},
}
