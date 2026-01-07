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
  require('lualine_start')
  require('lsp')
  require('cmp_config')
  require('telescope_config')
  require('treesitter_config')
  require('nvimtree_config')
  
  -- catppuccin カラースキーム適用
  vim.cmd.colorscheme('catppuccin')
  
  -- 背景透過（Ghosttyの透過と連携）
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
  
  -- 行番号の色を見やすく設定
  vim.api.nvim_set_hl(0, 'LineNr', { fg = '#7f849c', bg = 'NONE' })  -- 通常の行番号
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#fab387', bg = 'NONE', bold = true })  -- 現在行の番号
  
  -- 24bitカラー有効化
  vim.opt.termguicolors = true
  
  -- 行番号
  vim.opt.number = true
  vim.opt.relativenumber = true
  
  -- カーソルライン強調
  vim.opt.cursorline = true
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

