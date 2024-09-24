if vim.g.vscode then

else
    vim.opt.number = true
    vim.opt.relativenumber = true
end


vim.g.mapleader = " "
vim.keymap.set('n', '<Space>', '<Nop>')
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', '<ESC><ESC>', ':nohlsearch<CR><ESC>')