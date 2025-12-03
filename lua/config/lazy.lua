-- ~/.config/nvim/lua/config/lazy.lua

-- 1. Bootstrap Lazy.nvim (Clone if missing)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 2. Load Core Settings
-- These must run BEFORE plugins are loaded
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- 3. Setup Lazy.nvim
require("lazy").setup({
  spec = {
    -- Import the entire 'lua/plugins' directory
    { import = "plugins" },
  },
  defaults = {
    -- By default, plugins are Lazy-Loaded 
    lazy = false, 
    version = false, -- always use the latest git commit
  },
  checker = { enabled = true }, -- automatically check for plugin updates
})
