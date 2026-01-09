# Neovim Configuration

Ghostty ターミナルと統一された外観の Neovim 設定。

## セットアップ

### 1. macism のインストール（IM 切り替え用）

```bash
brew tap laishulu/homebrew
brew install macism
```

### 2. プラグインのインストール

Neovim を起動すると lazy.nvim が自動的にプラグインをインストールします。

手動で管理画面を開く場合：

```vim
:Lazy
```

## lazy.nvim コマンド一覧

| コマンド        | 説明                                     |
| --------------- | ---------------------------------------- |
| `:Lazy`         | 管理画面を開く                           |
| `:Lazy sync`    | Install + Update + Clean を一括実行      |
| `:Lazy update`  | プラグインを更新                         |
| `:Lazy install` | 未インストールのプラグインをインストール |
| `:Lazy clean`   | 不要なプラグインを削除                   |
| `:Lazy check`   | 更新があるか確認                         |

### 管理画面のキー操作

| キー | 操作                |
| ---- | ------------------- |
| `S`  | Sync（一括同期）    |
| `U`  | Update（更新）      |
| `I`  | Install             |
| `C`  | Check               |
| `X`  | Clean               |
| `?`  | ヘルプ              |
| `q`  | 画面を閉じる        |

### プラグインを追加・削除したとき

`plugins.lua` を編集したら **`:Lazy sync`** を実行すればOK。

## 使用プラグイン

| カテゴリ             | プラグイン                         |
| -------------------- | ---------------------------------- |
| カラースキーム       | catppuccin（mocha、透過背景対応）  |
| ステータスライン     | lualine                            |
| IM 切り替え          | im-select                          |
| LSP                  | nvim-lspconfig, mason              |
| 補完                 | nvim-cmp                           |
| スニペット           | LuaSnip                            |
| ファジーファインダー | telescope                          |
| シンタックス         | nvim-treesitter                    |
| ファイルツリー       | nvim-tree                          |
| Git                  | lazygit.nvim                       |
