if vim.g.vscode then

else
    vim.opt.number = true
    vim.opt.relativenumber = true
end

vim.g.mapleader = " "
vim.keymap.set('n', '<Space>', '<Nop>')
vim.keymap.set('n', '<Leader>u', '<C-r>')
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'd', '"_d')
vim.keymap.set('n', 'c', '"_c')
vim.keymap.set('n', '<ESC><ESC>', ':nohlsearch<CR><ESC>')
vim.keymap.set('n', 'M', '`')
vim.keymap.set('n', '`', 'M')
vim.keymap.set('n', '<Home>', '^')

vim.keymap.set('v', '<Home>', '^')
vim.keymap.set('v', 'x', '"_x')
vim.keymap.set('v', 'd', '"_d')
vim.keymap.set('v', 'c', '"_c')