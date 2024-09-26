require('plugins')
require('keymaps')
if vim.g.vscode then
else
    require('lualine_start')
    vim.opt.number = true
    vim.opt.relativenumber = true
end

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "plugins.lua" },
    command = "PackerCompile",
})

vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#FF1493" })
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = 'YankHighlight', timeout = 200 })
  end,
})

vim.opt.clipboard:append({"unnamedplus"})