-- netrw config

vim.g.netrw_banner=0
vim.g.netrw_liststyle=3
vim.g.netrw_browse_split=4
vim.g.netrw_altv=1
vim.g.netrw_winsize=25

vim.api.nvim_command('augroup ProjectDrawer')
vim.api.nvim_command('autocmd!')
vim.api.nvim_command('autocmd VimEnter * :Vexplore')
vim.api.nvim_command('augroup END')
