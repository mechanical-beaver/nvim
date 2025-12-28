return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		config = function()
			require("neo-tree").setup({
				sources = { "filesystem", "buffers", "git_status" },
				source_selector = {
					winbar = true,
					statusline = false,
				},
				open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
				filesystem = {
					filtered_items = {
						visible = true,
						hide_dotfiles = false,
					},
					bind_to_cwd = true,
					follow_current_file = { enabled = true },
					use_libuv_file_watcher = true,
				},
				window = {
					mappings = {
						["<space>"] = "none",
						["<Tab>"] = function(state)
							local sources = { "filesystem", "buffers", "git_status" }
							local current = state.name
							local next_index = 1

							for i, src in ipairs(sources) do
								if src == current then
									next_index = i + 1
									break
								end
							end

							if next_index > #sources then
								next_index = 1
							end

							local next_source = sources[next_index]
							require("neo-tree.command").execute({
								source = next_source,
								toggle = false,
								reveal = true,
							})
						end,
						["O"] = {
							function(state)
								require("lazy.util").open(state.tree:get_node().path, { system = true })
							end,
							desc = "Open with System Application",
						},
						["P"] = { "toggle_preview", config = { use_float = false } },
					},
				},
				default_component_configs = {
					indent = {
						with_expanders = true,
						expander_collapsed = "",
						expander_expanded = "",
						expander_highlight = "NeoTreeExpander",
					},
					git_status = {
						symbols = {
							unstaged = "󰄱",
							staged = "󰱒",
						},
					},
				},
			})
		end,
	},
}
