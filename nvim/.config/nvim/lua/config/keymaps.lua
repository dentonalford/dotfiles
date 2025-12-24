-- clear search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Ctrl+dir to swap panes
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "]q", ":cnext<CR>zz")
vim.keymap.set("n", "[q", ":cprevious<CR>zz")
