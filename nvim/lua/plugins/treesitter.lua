local ts_ensure = {
	"bash",
	"lua",
	"javascript",
}

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local ts_config = require("nvim-treesitter.configs")

		ts_config.setup({
			ensure_installed = ts_ensure,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
