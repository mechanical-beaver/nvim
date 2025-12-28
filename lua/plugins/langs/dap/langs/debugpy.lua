return {
	{
		"mfussenegger/nvim-dap-python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			local dap_python = require("dap-python")

			local mason_path = vim.fn.glob(vim.fn.stdpath("data") .. "/mason/")
			local debugpy_path = mason_path .. "packages/debugpy/venv/Scripts/python"

			dapui.setup()
			dap_python.setup(debugpy_path)
			dap_python.default_port = 38000
		end,
	},
}
