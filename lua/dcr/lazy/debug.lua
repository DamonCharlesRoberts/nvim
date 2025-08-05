return {
	{
		"mfussenegger/nvim-dap",
		lazy = true,
		keys = {
			{
				"<leader>db",
				function()
					require("dap").toggle_breakpoint()
				end,
				desc = "Toggle Breakpoint",
			},
			{
				"<leader>dc",
				function()
					require("dap").continue()
				end,
				desc = "Continue",
			},
			{
				"<leader>dC",
				function()
					require("dap").run_to_cursor()
				end,
				desc = "Run to Cursor",
			},
			{
				"<leader>dT",
				function()
					require("dap").terminate()
				end,
				desc = "Terminate",
			},
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		config = true,
		keys = {
			{
				"<leader>du",
				function()
					require("dapui").toggle({})
				end,
				desc = "Dap UI",
			},
		},
		dependencies = {
			{
				"jay-babu/mason-nvim-dap.nvim",
				opts = {
					handlers = {},
					automatic_installation = false,
					ensure_installed = {},
				},
				dependencies = {
					"mfussenegger/nvim-dap",
					"mason-org/mason.nvim",
				},
			},
			{
				"mfussenegger/nvim-dap-python",
				lazy = true,
				config = function()
					require("dap-python").setup("uv")
				end,
				-- Consider the mappings at
				-- https://github.com/mfussenegger/nvim-dap-python?tab=readme-ov-file#mappings
				dependencies = {
					"mfussenegger/nvim-dap",
				},
			},
			{
				"nvim-neotest/nvim-nio",
			},
		},
	},
	-- keep-sorted end
}
