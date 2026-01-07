-- nvim-tree設定 (プラグインがインストールされている場合のみ)
local ok, nvimtree = pcall(require, 'nvim-tree')
if not ok then
    return
end

-- netrwを無効化（nvim-tree推奨）
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
    -- gitステータス表示
    git = {
        enable = true,
    },
    -- ファイルアイコン
    renderer = {
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    -- ウィンドウ設定
    view = {
        width = 30,
        side = "left",
    },
    -- ファイルフィルタ
    filters = {
        dotfiles = false,  -- 隠しファイルを表示
        custom = { ".DS_Store" },
    },
    -- ファイル変更時に自動リロード
    actions = {
        open_file = {
            quit_on_open = false,
        },
    },
})
