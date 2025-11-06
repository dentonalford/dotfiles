return {
	{ "nvim-mini/mini.cursorword", version = "*" },
	{
		"nvim-mini/mini.surround",
		version = "*",
		opts = {
			mappings = {
				add = "<leader>sa",
				delete = "<leader>sd", -- Delete surrounding
				find = "<leader>sf", -- Find surrounding (to the right)
				find_left = "<leader>sF", -- Find surrounding (to the left)
				highlight = "<leader>sh", -- Highlight surrounding
				replace = "<leader>sr", -- Replace surrounding
			},
		},
	},
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
					-- require("mini.files").open()
					require("mini.files").open(vim.api.nvim_buf_get_name(0), false)
				end,
				desc = "Mini.nvim [f]ile [e]xplorer",
			},
		},
	},
}
