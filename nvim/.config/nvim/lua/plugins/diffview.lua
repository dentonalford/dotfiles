return {
	"sindrets/diffview.nvim",
	opts = {},
	keys = {
		{
			"<leader>dp",
			"<cmd>DiffviewOpen origin/HEAD...HEAD --imply-local<cr>",
			desc = "[d]iff current [p]r against its base commit",
		},
		{
			"<leader>dP",
			"<cmd>DiffviewFileHistory --range=origin/HEAD...HEAD --right-only --no-merges<cr>",
			desc = "[d]iff current [P]r by commit",
		},
		{ "<leader>do", "<cmd>DiffviewOpen<cr>", desc = "[d]iffview [o]pen" },
		{ "<leader>dt", "<cmd>DiffviewToggle<cr>", desc = "[d]iffview [t]oggle" },
		{ "<leader>dc", "<cmd>DiffviewClose<cr>", desc = "[d]iffview [c]lose" },
	},
}
