vim.g.mapleader = " "

vim.keymap.set('n', '<C-f>', vim.lsp.buf.format, {
  desc = 'Format current buffer with LSP'
})

vim.keymap.set('n', '<A-t>', ":Neotree filesystem reveal left<CR>")

vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
