return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { { "prettierd", "prettier" } },
				terraform = {},
			},
			format_after_save = {
				lsp_format = "fallback",
				timeout_ms = 500,
			},
		})

		vim.keymap.set("", "<leader>f", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end)
	end,
}
