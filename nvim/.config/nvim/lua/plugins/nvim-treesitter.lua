local ensure_installed = {
  "authzed",
  "bash",
  "c",
  "css",
  "csv",
  "dockerfile",
  "elixir",
  "heex",
  "helm",
  "html",
  "javascript",
  "json",
  "lua",
  "markdown_inline",
  "markdown",
  "nginx",
  "nix",
  "ruby",
  "scss",
  "sql",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "xml",
  "yaml",
}

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = ensure_installed,
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Enter>", -- set to `false` to disable one of the mappings
                    node_incremental = "<Enter>",
                    scope_incremental = false,
                    node_decremental = "<Backspace>",
                },
            },
        })
    end
}
