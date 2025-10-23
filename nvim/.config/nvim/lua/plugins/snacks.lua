---
-- Collection of QOL plugins
-- Dependency for yazi.nvim
---
return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		bigfile = { enabled = true },
		bufdelete = { enabled = true },
		dashboard = { enabled = true },
		explorer = { enabled = false },
		indent = { enabled = true },
		input = { enabled = true },
		lazygit = { enabled = true },
		picker = { enabled = false },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		terminal = { enabled = true, win = { position = "float" } },
		words = { enabled = false },
	},
	keys = {
		{
			"<leader>bd",
			function()
				Snacks.bufdelete()
			end,
			desc = "Delete current buffer",
		},
		{
			"<leader>tt",
			function()
				Snacks.terminal()
			end,
			desc = "[t]oggle floating [t]erminal",
		},
		{
			"<C-\\>",
			function()
				Snacks.terminal(nil, { win = { position = "right" } })
			end,
			desc = "Open terminal in right split",
		},
		{
			"<leader>nh",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "Show [n]otification [h]istory",
		},
		{
			"<leader>gs",
			function()
				Snacks.lazygit.open()
			end,
			desc = "[g]it [s]tatus (snacks.lazygit)",
		},
	},
}
