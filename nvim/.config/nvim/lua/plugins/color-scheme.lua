---
-- Set up dracula as the color scheme.
---
return {
	"Mofiqul/dracula.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme dracula]])
	end,
}

-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {
-- 		theme = "wave",
-- 	},
-- 	config = function()
-- 		vim.cmd([[colorscheme kanagawa]])
-- 	end,
-- }
