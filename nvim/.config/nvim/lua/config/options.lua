vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

---
-- Set default indent behavior
---
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.shiftwidth = 2 -- Amount to indent with << and >>
vim.opt.tabstop = 2 -- How many spaces are shown per Tab
vim.opt.softtabstop = 2 -- How many spaces are applied when pressing Tab
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true -- Keep identation from previous line
vim.opt.breakindent = true -- Enable break indent

---
-- Line/cursor info
---
vim.opt.number = true -- always show numbers
vim.opt.relativenumber = true -- use relative line numbers
vim.opt.cursorline = true -- highlight current line

-- Store undos between sessions
vim.opt.undofile = true

-- Paste from outside of neovim with `+p`
vim.opt.clipboard:append({ "unnamed", "unnamedplus" })

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5
