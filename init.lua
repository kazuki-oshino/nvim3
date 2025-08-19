require('plugins')
require('keymaps')
if vim.g.vscode then
  vim.api.nvim_create_autocmd('InsertEnter', {
    callback = function()
      vim.defer_fn(function()
        -- スペースキーを1回入力してすぐ削除（日本語入力バグ回避用）
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Space><BS>', true, false, true), 'n', false)
      end, 10)
    end,
  })
else
  -- require('lualine_start').setup()
  vim.opt.number = true
  vim.opt.relativenumber = true
end

-- plugins.luaを保存したらPackerCompileを実行する
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "plugins.lua" },
  command = "PackerCompile",
})

vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.whichwrap = "b,s,h,l,<,>,[,],~"

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

-- 矩形選択の設定
vim.opt.virtualedit = "block"  -- 矩形選択時に文字が存在しない場所も選択可能に