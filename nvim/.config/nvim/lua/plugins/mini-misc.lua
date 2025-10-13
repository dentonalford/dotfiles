return {
	{ "nvim-mini/mini.cursorword", version = "*" },
	{
		"nvim-mini/mini.trailspace",
		version = "*",
		keys = {
			{
				"<leader>ft",
				function()
					trailspace = require("mini.trailspace")
					trailspace.trim()
					trailspace.trim_last_lines()
				end,
				desc = "Trim trailing whitespace.",
			},
		},
	},
	{
		"nvim-mini/mini.files",
		version = "*",
		keys = {
			{
				"<leader>fe",
				function()
					require("mini.files").open()
				end,
				desc = "Mini.nvim [f]ile [e]xplorer",
			},
		},
	},
}
