require('plugins')
require('keymaps')
if vim.g.vscode then
else
    require('lualine_start')
    vim.opt.number = true
    vim.opt.relativenumber = true
end

-- plugins.luaを保存したらPackerCompileを実行する
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "plugins.lua" },
    command = "PackerCompile",
})

-- yank highlightの設定
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#FF1493" })
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = 'YankHighlight', timeout = 200 })
  end,
})

-- timeoutlenの設定
vim.o.timeoutlen = 3000

-- clipboardに追加する
vim.opt.clipboard:append("unnamedplus")
