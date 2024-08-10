# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# CLIs

# https://github.com/anyenv/anyenv
brew install anyenv
# https://github.com/pyenv/pyenv-virtualenv
# brew install pyenv-virtualenv
# https://github.com/BurntSushi/ripgrep
brew install ripgrep
# https://github.com/sharkdp/fd
brew install fd
# https://github.com/abiosoft/colima
brew install colima
# https://github.com/jesseduffield/lazydocker
brew install lazydocker
# https://github.com/jesseduffield/lazygit 
brew install lazygit
# https://github.com/docker/cli
brew install docker
# https://github.com/neovim/neovim?tab=readme-ov-file
brew install neovim
brew install neomutt
brew install git
brew install telnet


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


# configuration

sh ./sh/link.sh
