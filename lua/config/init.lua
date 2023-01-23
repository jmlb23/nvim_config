require("config.remap")
require("config.set")
require("config.packer")
require("config.colors")
require("config.treesitter")
require("config.lsp")
require("config.netrw")
require("config.telescope")
require("config.gitsigns")
if vim.loop.os_uname().sysname == "Darwin" then
  require("config.xbase")
end 
