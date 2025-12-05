vim.g.mapleader = " "

vim.keymap.set('n', '<C-f>', vim.lsp.buf.format, {
  desc = 'Format current buffer with LSP'
})


local function disable_key(mode, key)
  vim.keymap.set(mode, key, '<Nop>', { noremap = true, silent = true })
end

for _, mode in pairs({ 'n', 'i', 'v', 'c' }) do
  disable_key(mode, '<Up>')
  disable_key(mode, '<Down>')
  disable_key(mode, '<Left>')
  disable_key(mode, '<Right>')
end

vim.keymap.set('n', '<A-t>', ":Neotree filesystem reveal left toggle=true<CR>")

