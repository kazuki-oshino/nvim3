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
        "markdown_inline",
        "bash",
    },
    -- パーサーを自動インストール
    auto_install = true,
    -- シンタックスハイライト
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        -- マークダウンはNeovim 0.11との互換性問題があるため無効化
        disable = { "markdown", "markdown_inline" },
    },
    -- インデント
    indent = {
        enable = true,
    },
})
