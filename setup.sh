# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc

# CLIs

# https://github.com/jesseduffield/lazydocker
brew install lazydocker
# https://github.com/jesseduffield/lazygit 
brew install lazygit

if [[ "$(uname -s)" == "Darwin" ]]; then
  # https://github.com/anyenv/anyenv
  brew install anyenv
  # https://github.com/BurntSushi/ripgrep
  brew install ripgrep
  # https://github.com/sharkdp/fd
  brew install fd
  # https://github.com/abiosoft/colima
  brew install colima
  # https://github.com/docker/cli
  brew install docker
  # https://github.com/neovim/neovim?tab=readme-ov-file
  brew install neomutt
  brew install git
  brew install telnet
  brew install gemini-cli

  brew install neovim

  # Apps

  # https://wezfurlong.org/wezterm/install/macos.html 
  brew install --cask wezterm
  # https://github.com/pqrs-org/Karabiner-Elements
  brew install --cask karabiner-elements
  brew install --cask arc
  # https://formulae.brew.sh/cask/raycast
  brew install --cask raycast
  # https://formulae.brew.sh/cask/notion-calendar
  brew install --cask notion-calendar

  # font
  brew install --cask font-cica


  # configuration

  sh ./sh/link.sh

else
  # mount for codespace
  ln -sfn /workspaces/dot-files/nvim ~/.config/nvim
fi
