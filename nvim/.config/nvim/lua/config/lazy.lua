-- These variables/functions aren't from the lazy.nvim boilerplate

local LEADER_KEY = " "
local LOCAL_LEADER_KEY = "\\"
local COLOR_SCHEME = "dracula"

local set_up_keymaps = function()
  require("config.keymaps")
end

local set_up_options = function()
  require("config.options")
end


-- Now this is all boilerplate, save for where we call our own functions

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = LEADER_KEY
vim.g.maplocalleader = LOCAL_LEADER_KEY

set_up_options()

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { COLOR_SCHEME } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})


set_up_keymaps()