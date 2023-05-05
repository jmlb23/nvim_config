require("config.remap")
require("config.set")
require("config.packer")
require("config.colors")
require("config.treesitter")
require("config.lsp")
require("config.nvimtree")
require("config.telescope")
require("config.gitsigns")
require("config.nullls")
require("config.trouble")
if vim.loop.os_uname().sysname == "Darwin" then
  require("config.xbase")
end 
