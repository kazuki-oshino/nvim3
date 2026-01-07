-- Telescope設定 (プラグインがインストールされている場合のみ)
local ok, telescope = pcall(require, 'telescope')
if not ok then
    return
end

local actions = require('telescope.actions')

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
        -- キーマッピング
        mappings = {
            -- Insertモード (入力中)
            i = {
                ["<Esc>"] = actions.close,  -- Esc1回で閉じる
                ["<C-c>"] = actions.close,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
            -- Normalモード
            n = {
                ["<Esc>"] = actions.close,
                ["q"] = actions.close,
            },
        },
    },
    pickers = {
        find_files = {
            hidden = true,  -- 隠しファイルも表示
        },
    },
})
