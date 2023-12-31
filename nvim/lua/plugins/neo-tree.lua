return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  keys = {
    { "<C-e>", "<cmd>Neotree toggle position=right<cr>", desc = "Neotree Project Explorer" },
    { "<leader>pg", "<cmd>Neotree toggle position=right source=git_status<cr>", desc = "Neotree Project Git" },
    { "<leader>pb", "<cmd>Neotree toggle position=right source=buffers<cr>", desc = "Neotree Project Buffers" },
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("neo-tree").setup({
      close_if_last_window = true,
      enable_git_status = true,
      enable_diagnostics = true,
      window = {
        position = "right",
      },
      filesystem = {
        follow_current_file = {
          enabled = true
        },
        group_empty_dirs = true,
      },
      buffers = {
        follow_current_file = {
          enabled = true
        },
      }
    })
  end,
}



-- -- Neotree
-- -- "Project Explorer"
-- vim.keymap.set('n', '<leader>pe', '<Cmd>Neotree toggle position=right<CR>')
-- -- "Project Git"
-- vim.keymap.set('n', '<leader>pg', '<Cmd>Neotree toggle position=right source=git_status<CR>')
-- -- "Project Buffers"
-- vim.keymap.set('n', '<leader>pb', '<Cmd>Neotree toggle position=right source=buffers<CR>')
