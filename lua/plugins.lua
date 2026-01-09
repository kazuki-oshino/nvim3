-- lazy.nvim プラグイン設定
return {
  -- テキストオブジェクト・オペレーター
  'vim-scripts/argtextobj.vim',
  'vim-scripts/ReplaceWithRegister',
  'kana/vim-operator-user',
  {
    'kana/vim-operator-replace',
    dependencies = { 'kana/vim-operator-user' },
  },
  'osyo-manga/vim-operator-stay-cursor',

  -- ステータスライン
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  -- catppuccin カラースキーム
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup({
        flavour = 'mocha',
        transparent_background = true,
        integrations = {
          native_lsp = { enabled = true },
        },
      })
    end,
  },

  -- IM切り替え (macOS)
  {
    'keaising/im-select.nvim',
    config = function()
      require('im_select').setup({
        default_im_select = 'com.google.inputmethod.Japanese.Roman',
        set_default_events = { 'InsertEnter', 'InsertLeave', 'CmdlineLeave' },
        set_previous_events = {},
        async_switch_im = true,
      })
    end,
  },

  -- LSP関連
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  -- 補完エンジン
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',

  -- スニペット
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',

  -- Telescope (ファジーファインダー)
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  -- Treesitter (シンタックスハイライト強化)
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      require('nvim-treesitter.install').update({ with_sync = true })()
    end,
  },

  -- nvim-tree (ファイルエクスプローラー)
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  -- lazygit (Git UI)
  {
    'kdheepak/lazygit.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
}