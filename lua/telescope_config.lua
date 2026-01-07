-- Telescope設定 (プラグインがインストールされている場合のみ)
local ok, telescope = pcall(require, 'telescope')
if not ok then
    return
end

telescope.setup({
    defaults = {
        -- 検索時に無視するパターン
        file_ignore_patterns = {
            "node_modules",
            ".git",
            "%.lock",
        },
        -- レイアウト設定
        layout_strategy = 'horizontal',
        layout_config = {
            horizontal = {
                preview_width = 0.5,
            },
        },
    },
    pickers = {
        find_files = {
            hidden = true,  -- 隠しファイルも表示
        },
    },
})
