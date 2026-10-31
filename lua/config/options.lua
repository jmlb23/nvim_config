vim.opt.signcolumn = 'yes'

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.incsearch = true
vim.opt.swapfile = false

vim.opt.scrolloff = 8
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

--make fold don't collapse all by default when a file is open
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

vim.o.foldmethod = "syntax"
vim.o.foldexpr = "v:lua.vim.lsp.foldexpr()"

