require('plugins')
require('keymaps')
if vim.g.vscode then
else
    require('lualine_start')
end

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "plugins.lua" },
    command = "PackerCompile",
})
