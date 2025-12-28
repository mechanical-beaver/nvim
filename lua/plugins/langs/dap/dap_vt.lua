return {
	"theHamsta/nvim-dap-virtual-text",
	opts = {
		-- commented = true,
	},
	config = function(_, opts)
		require("nvim-dap-virtual-text").setup(opts)
	end,
}
