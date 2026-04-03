return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {

		theme = "everforest",
		sections = {
			lualine_a = { {
				"mode",
				fmt = function(str)
					return str:sub(1, 1)
				end,
			}, "location" },
			lualine_b = { "diff", "diagnostics" },
			lualine_c = {
				{ "filename", file_status = true, path = 1, symbols = { readonly = "󰌾", modified = "󰣕" } },
			},
			lualine_x = { "filetype" },
			lualine_y = { "lsp_status" },
			lualine_z = {},
		},
	},
}
