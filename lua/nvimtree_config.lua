-- nvim-tree設定 (プラグインがインストールされている場合のみ)
local ok, nvimtree = pcall(require, 'nvim-tree')
if not ok then
    return
end

-- netrwを無効化（nvim-tree推奨）
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- カスタム関数: パスをクリップボードにコピー
local api = require('nvim-tree.api')

local function copy_absolute_path()
    local node = api.tree.get_node_under_cursor()
    if node then
        vim.fn.setreg('+', node.absolute_path)
        vim.notify('コピーしました: ' .. node.absolute_path)
    end
end

local function copy_relative_path()
    local node = api.tree.get_node_under_cursor()
    if node then
        local relative_path = vim.fn.fnamemodify(node.absolute_path, ':.')
        vim.fn.setreg('+', relative_path)
        vim.notify('コピーしました: ' .. relative_path)
    end
end

local function copy_filename()
    local node = api.tree.get_node_under_cursor()
    if node then
        vim.fn.setreg('+', node.name)
        vim.notify('コピーしました: ' .. node.name)
    end
end

-- nvim-tree用のキーマッピング設定
local function on_attach(bufnr)
    local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- デフォルトのキーマッピングを適用
    api.config.mappings.default_on_attach(bufnr)

    -- カスタムキーマッピング追加
    vim.keymap.set('n', 'Y', copy_absolute_path, opts('絶対パスをコピー'))
    vim.keymap.set('n', 'y', copy_relative_path, opts('相対パスをコピー'))
    vim.keymap.set('n', 'yn', copy_filename, opts('ファイル名をコピー'))
end

nvimtree.setup({
    on_attach = on_attach,
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
        git_ignored = false,  -- gitignoreされたファイルも表示
        custom = { ".DS_Store" },
    },
    -- ファイル変更時に自動リロード
    actions = {
        open_file = {
            quit_on_open = false,
        },
    },
})
