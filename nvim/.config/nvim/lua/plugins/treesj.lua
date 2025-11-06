return {
	"Wansmer/treesj",
	keys = {
		{
			"<leader>jj",
			function()
				require("treesj").toggle()
			end,
			desc = "Join/Split lines",
		},
	},
	dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
}
