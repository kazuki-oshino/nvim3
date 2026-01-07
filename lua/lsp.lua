-- LSP設定 (Neovim 0.11+)

-- Mason初期化
require('mason').setup()
require('mason-lspconfig').setup()

-- LSP共通キーマッピング
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local opts = { noremap = true, silent = true, buffer = args.buf }
        
        -- 定義へジャンプ
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        -- ホバー情報
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        -- 実装へジャンプ
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        -- 参照一覧
        vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, opts)
        -- リネーム
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        -- コードアクション
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
        -- 診断情報
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
        vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
    end,
})

-- LSP capabilities（補完連携用）
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- sourcekit-lsp設定（Swift用、Neovim 0.11+ API）
vim.lsp.config.sourcekit = {
    cmd = { 'xcrun', 'sourcekit-lsp' },
    filetypes = { 'swift', 'objective-c', 'objective-cpp' },
    root_markers = { 'Package.swift', '.git', '*.xcodeproj', '*.xcworkspace' },
    capabilities = capabilities,
}

-- sourcekit-lspを有効化
vim.lsp.enable('sourcekit')
