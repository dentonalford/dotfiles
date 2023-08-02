local builtin = require('telescope.builtin')

-- "Project Files"
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- "Project Search"
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})

-- "Project Search Current"
vim.keymap.set('n', '<leader>pc', builtin.grep_string, {})
