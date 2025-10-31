vim.g.mapleader = " "

if vim.g.vscode then
    local vscode = require('vscode')
    vim.keymap.set('n', 'gi', function() vscode.call('editor.action.goToImplementation') end)
    vim.keymap.set('n', 'go', function() vscode.call('workbench.action.openRecent') end)
    vim.keymap.set('n', 'gj', function() vscode.call('workbench.action.terminal.focus') end)
    vim.keymap.set('n', 'gt', function() vscode.call('editor.action.goToTypeDefinition') end)
    vim.keymap.set('n', 'gp', function() vscode.call('workbench.action.showCommands') end)
    vim.keymap.set('n', 'gw', function() vscode.call('projectsExplorerFavorites.focus') end)
    vim.keymap.set('n', 'ga', function() vscode.call('editor.action.quickFix') end)
    vim.keymap.set('n', 'gk', function() vscode.call('bookmarks.toggle') end)
    vim.keymap.set('n', 's', function() vscode.call('jumpy2.toggle') end)
    vim.keymap.set('n', '<Leader>a', function() vscode.call('currentFilePath.copy') end)
else
    -- vscode以外で必要に応じて追記
end

vim.keymap.set('n', '<Space>', '<Nop>')
vim.keymap.set('n', '<Leader>u', '<C-r>')
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', '<ESC><ESC>', ':nohlsearch<CR><ESC>')
-- vim.keymap.set('n', 'M', '`')
-- vim.keymap.set('n', '`', 'M')
vim.keymap.set('n', '<Home>', '^')
vim.keymap.set('n', 'R', '<Plug>(operator-replace)')
-- vim.keymap.set('n', 'y', '<Plug>(operator-stay-cursor-yank)')

vim.keymap.set('v', '<Space>', '<Nop>')
vim.keymap.set('v', '<Home>', '^')
vim.keymap.set('v', 'x', '"_x')