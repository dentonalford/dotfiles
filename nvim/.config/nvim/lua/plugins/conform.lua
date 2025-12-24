return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")
		local conform_util = require("conform.util")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				javascript = { "prettierd", "prettier", stop_after_first = true },
			},
			formatters = {
				prettierd = {
					cwd = conform_util.root_file({ ".prettierignore", "package.json" }),
					require_cwd = true,
				},
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>fp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "format file (or range when in visual mode)" })
	end,
}
