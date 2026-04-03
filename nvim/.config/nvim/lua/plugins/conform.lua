return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")
		local conform_util = require("conform.util")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				json = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", stop_after_first = true },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				javascriptreact = { "prettierd", "prettier", stop_after_first = true },
			},
			-- formatters = {
			-- 	prettierd = {
			-- 		cwd = conform_util.root_file({ ".prettierignore", "package.json" }),
			-- 		require_cwd = true,
			-- 	},
			-- },
			format_on_save = function(bufnr)
				local disabled_filetypes = { yaml = true }
				local lsp_format = "fallback"

				if disabled_filetypes[vim.bo[bufnr].filetype] then
					lsp_format = "never"
				end

				return {
					timeout_ms = 5000,
					lsp_format = lsp_format,
				}
			end,
		})

		vim.keymap.set({ "n", "v" }, "<leader>fp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 5000,
			})
		end, { desc = "format file (or range when in visual mode)" })
	end,
}
