return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-tresitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {},
	keys = {
		{ "<C-k>", "<cmd>Lspsaga hover_doc<cr>", desc = "Show Definition" },
	},
}
