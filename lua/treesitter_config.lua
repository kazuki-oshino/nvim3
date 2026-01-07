-- Treesitter設定 (プラグインがインストールされている場合のみ)
local ok, configs = pcall(require, 'nvim-treesitter.configs')
if not ok then
    return
end

configs.setup({
    -- 自動インストールする言語
    ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "python",
        "json",
        "yaml",
        "html",
        "css",
        "markdown",
        "bash",
    },
    -- パーサーを自動インストール
    auto_install = true,
    -- シンタックスハイライト
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    -- インデント
    indent = {
        enable = true,
    },
})
