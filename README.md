# dot-files

Personal dotfiles for development environment. Primarily configured for macOS, with support for GitHub Codespaces.

## Structure

| Directory / File | Description |
|---|---|
| `nvim/` | Neovim config (plugin management via lazy.nvim) |
| `zsh/` | Zsh config (`.zshrc` / `.zprofile` / `.zenv`) |
| `tmux/` | tmux config |
| `wezterm/` | WezTerm terminal emulator config |
| `karabiner/` | Karabiner-Elements keyboard customization |
| `lazygit/` | lazygit config |
| `neomutt/` | neomutt mail client config |
| `sh/link.sh` | Script to create symlinks |
| `setup.sh` | Environment setup script (Homebrew / tool installation) |

## Setup

### Prerequisites

- macOS (partial support for Linux / GitHub Codespaces)
- [Homebrew](https://brew.sh/) (automatically installed by `setup.sh`)

### Installation

```bash
git clone https://github.com/affine1129/dot-files.git ~/.config && cd ~/.config/dot-files && bash setup.sh
```

`setup.sh` does the following:

1. Install **Homebrew**
2. Install CLI tools (lazygit, lazydocker, ripgrep, fd, etc.)
3. Install macOS apps (WezTerm, Karabiner-Elements, Arc, Raycast, Notion Calendar)
4. Install font (Cica)
5. Create symlinks via `sh/link.sh`

> In GitHub Codespaces, only the `nvim` config is linked.

## Neovim Plugins (key ones)

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** — Plugin manager
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** — LSP configuration
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** — Syntax highlighting
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** — Fuzzy finder
- **[copilot.nvim](https://github.com/zbirenbaum/copilot.lua)** + **[CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim)** — GitHub Copilot integration
- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)** — File explorer
- **[none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)** — Formatter / linter
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** — Status line
- **[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)** — Buffer tab line
- **[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)** — Terminal integration

## 動作環境

- **Node.js**: 21.4.0
- **Python**: 3.12.1
