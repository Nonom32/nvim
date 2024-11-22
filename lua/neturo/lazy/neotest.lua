return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"nvim-neotest/nvim-nio",
			"marilari88/neotest-vitest",
			"nvim-neotest/neotest-plenary",
			"alfaix/neotest-gtest",
			"mrcjkb/rustaceanvim",
			"nvim-neotest/neotest-go",
		},
		config = function()
			local neotest = require("neotest")
			neotest.setup({
				adapters = {
					require("neotest-vitest"),
					require("neotest-plenary"),
					require("neotest-gtest"),
					require("rustaceanvim"),
					require("neotest-go"),
				},
			})

			vim.keymap.set("n", "<leader>nr", function()
				neotest.run.run()
			end)

			vim.keymap.set("n", "<leader>nf", function()
				neotest.run.run(vim.fn.expand("%"))
			end)
		end,
	},
}
