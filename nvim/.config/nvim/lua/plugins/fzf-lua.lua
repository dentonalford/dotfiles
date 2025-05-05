return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  keys = {
        { 
            "<leader>ff",
            function() require('fzf-lua').files() end,
            desc="Find Files in project directory"
        },
  }
}
