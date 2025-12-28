return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "night",
			transparent = false,
			terminal_colors = true,
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
				functions = {},
				variables = {},
				floats = "dark",
			},
			lualine_bold = false,

			on_highlights = function(hl, c)
				hl.MiniCursorwordCurrent = { bg = "#010101", fg = "#ffffff", bold = true }
				hl.MiniCursorword = { bg = "#010101", fg = "#ffffff" }

				hl["@variable"] = { fg = "#00ff8c" }
				hl["@field"] = { fg = "#00ff8c" }
				hl["@property"] = { fg = "#00ff8c" }
				hl["@parameter"] = { fg = "#00ff8c" }
				hl.Identifier = { fg = "#00ff8c" }

				hl["@function"] = { fg = "#00aaff", bold = true }
				hl["@keyword"] = { fg = "#ff00ff", italic = true }
				hl["@constant"] = { fg = "#ffae00" }
				hl["@type"] = { fg = "#00ffee" }
				hl["@string"] = { fg = "#00ff88" }
				hl["@number"] = { fg = "#fffb00" }

				hl.LspReferenceText = { bg = "#010101", fg = "#ffffff" }
				hl.LspReferenceRead = { bg = "#010101", fg = "#ffffff" }
				hl.LspReferenceWrite = { bg = "#010101", fg = "#ffffff" }

				hl.NeoTreeFileName = { fg = "#ffffff" }
				hl.NeoTreeDirectoryName = { fg = "#00ff62" }
				hl.NeoTreeRootName = { fg = "#ffffff", bold = true }
				hl.NeoTreeGitAdded = { fg = "#00ff44" }
				hl.NeoTreeGitModified = { fg = "#fffb00" }
				hl.NeoTreeGitDeleted = { fg = "#ff000d" }

				hl.NeoTreeIndentMarker = { fg = "#ffffff" }
				hl.NeoTreeExpander = { fg = "#ffffff" }

				hl.DevIconLua = { fg = "#1affff" }
				hl.DevIconJs = { fg = "#ffff1a" }
				hl.DevIconTs = { fg = "#00ffea" }
				hl.DevIconHtml = { fg = "#ff6aff" }
				hl.DevIconCss = { fg = "#00ffff" }
				hl.DevIconPy = { fg = "#00ff88" }
				hl.DevIconC = { fg = "#00ffaa" }
				hl.DevIconCpp = { fg = "#00ffcc" }
				hl.DevIconH = { fg = "#00ffaa" }
				hl.DevIconHpp = { fg = "#00ffcc" }
				hl.DevIconCxx = { fg = "#00ffcc" }
				hl.DevIconHxx = { fg = "#00ffcc" }
				hl.DevIconHeader = { fg = "#00ffaa" }
				hl.DevIconJson = { fg = "#ffea00" }
				hl.DevIconMd = { fg = "#ff88ff" }
				hl.DevIconDefault = { fg = "#ffffff" }
			end,

			on_colors = function(colors)
				colors.bg = "#010101"
				colors.bg_dark = "#151515"
				colors.bg_float = "#131313"
				colors.bg_sidebar = "#141414"
				colors.bg_statusline = "#161616"
				colors.bg_visual = "#1f1f1f"
				colors.bg_highlight = "#202020"
				colors.bg_popup = "#111111"

				colors.fg = "#ffffff"
				colors.fg_dark = "#e0e0e0"
				colors.fg_gutter = "#a0a0a0"

				colors.red = "#ff000d"
				colors.orange = "#ff6a00"
				colors.yellow = "#fffb00"
				colors.green = "#00ff04"
				colors.blue = "#0015ff"
				colors.cyan = "#00ffff"
				colors.magenta = "#ff00bf"
				colors.purple = "#b300ff"
				colors.teal = "#00ffb7"

				colors.error = "#fc0000"
				colors.warning = "#f4fc00"
				colors.info = "#00c8ff"
				colors.hint = "#fc00fc"

				colors.border = "#b8b6b8"
				colors.border_highlight = "#00ffff"
			end,
		},

		config = function(_, opts)
			require("tokyonight").setup(opts)
		end,
	},
}
