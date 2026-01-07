# Neovim Configuration

Ghostty ターミナルと統一された外観の Neovim 設定。

## セットアップ

### 1. macism のインストール（IM 切り替え用）

```bash
brew tap laishulu/homebrew
brew install macism
```

### 2. プラグインのインストール

Neovim を起動して以下を実行：

```vim
:PackerInstall
```

## Packer コマンド一覧

| コマンド         | 説明                                     |
| ---------------- | ---------------------------------------- |
| `:PackerInstall` | 未インストールのプラグインをインストール |
| `:PackerUpdate`  | プラグインを更新                         |
| `:PackerSync`    | Install + Update + Compile を一括実行    |
| `:PackerClean`   | 不要なプラグインを削除                   |
| `:PackerCompile` | `packer_compiled.lua` を再生成           |
| `:PackerStatus`  | インストール済みプラグインの状態を表示   |

> **Note**: `plugins.lua` を保存すると自動で `PackerCompile` が実行されます。

### プラグインを追加・削除したとき

`plugins.lua` を編集したら **`:PackerSync`** を実行すればOK。

- 新しいプラグインをインストール
- 削除されたプラグインをクリーン
- `packer_compiled.lua` を再生成

これらを一括で行ってくれます。

## 使用プラグイン

- **catppuccin** - カラースキーム（mocha flavour、透過背景対応）
- **lualine** - ステータスライン
- **im-select** - ノーマルモード時の自動 IM 切り替え
