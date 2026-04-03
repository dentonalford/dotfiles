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

-- return {
-- 	"sainnhe/sonokai",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		-- Optionally configure and load the colorscheme
-- 		-- directly inside the plugin declaration.
-- 		-- vim.g.sonokai_style = "maia"
-- 		vim.g.sonokai_enable_italic = true
-- 		vim.g.sonokai_dim_inactive_windows = 1
-- 		vim.cmd.colorscheme("sonokai")
-- 	end,
-- }

return {
	"sainnhe/everforest",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.everforest_background = "hard"
		vim.g.everforest_enable_italic = true
		vim.g.everforest_dim_inactive_windows = 1
		vim.cmd.colorscheme("everforest")
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
