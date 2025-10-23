---
-- Set up dracula as the color scheme.
---
-- return {
-- 	"Mofiqul/dracula.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		-- load the colorscheme here
-- 		vim.cmd([[colorscheme dracula]])
-- 	end,
-- }

-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd([[colorscheme tokyonight]])
-- 	end,
-- }

return {
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.sonokai_style = "maia"
		vim.g.sonokai_enable_italic = true
		vim.cmd.colorscheme("sonokai")
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
