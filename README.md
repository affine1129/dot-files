# dot-files

個人の開発環境設定ファイル集です。macOS をメイン環境として、GitHub Codespaces でも動作するよう構成しています。

## 構成

| ディレクトリ / ファイル | 内容 |
|---|---|
| `nvim/` | Neovim 設定（lazy.nvim によるプラグイン管理） |
| `zsh/` | Zsh 設定（`.zshrc` / `.zprofile` / `.zenv`） |
| `tmux/` | tmux 設定 |
| `wezterm/` | WezTerm ターミナルエミュレータ設定 |
| `karabiner/` | Karabiner-Elements キーボードカスタマイズ |
| `lazygit/` | lazygit 設定 |
| `neomutt/` | neomutt メールクライアント設定 |
| `sh/link.sh` | シンボリックリンク作成スクリプト |
| `setup.sh` | 環境セットアップスクリプト（Homebrew / ツールインストール） |

## セットアップ

### 前提条件

- macOS（一部 Linux / GitHub Codespaces にも対応）
- [Homebrew](https://brew.sh/)（`setup.sh` 内で自動インストール）

### インストール

```bash
git clone https://github.com/affine1129/dot-files.git ~/.config
cd ~/.config/dot-files
bash setup.sh
```

`setup.sh` は以下を実行します：

1. **Homebrew** のインストール
2. CLI ツールのインストール（lazygit、lazydocker、ripgrep、fd など）
3. macOS アプリのインストール（WezTerm、Karabiner-Elements、Arc、Raycast、Notion Calendar）
4. フォント（Cica）のインストール
5. `sh/link.sh` によるシンボリックリンクの作成

> GitHub Codespaces 環境では、`nvim` 設定のみリンクされます。

## Neovim プラグイン（主要なもの）

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** — プラグインマネージャー
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** — LSP 設定
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** — シンタックスハイライト
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** — ファジーファインダー
- **[copilot.nvim](https://github.com/zbirenbaum/copilot.lua)** + **[CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim)** — GitHub Copilot 統合
- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)** — ファイルエクスプローラー
- **[none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)** — フォーマッター / リンター
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** — ステータスライン
- **[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)** — バッファタブライン
- **[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)** — ターミナル統合

## 動作確認環境

- **Node.js**: 21.4.0
- **Python**: 3.12.1
