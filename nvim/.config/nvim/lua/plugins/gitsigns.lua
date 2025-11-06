return {
	"lewis6991/gitsigns.nvim",
	lazy = false,
	config = function()
		vim.keymap.set("n", "<leader>gc", function()
			require("gitsigns").preview_hunk_inline()
		end)
	end,
}
