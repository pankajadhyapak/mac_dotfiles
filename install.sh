#!/bin/zsh

echo "Setting up your Mac..."

sudo -v

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

stow -v --ignore ".DS_Store" alacritty composer git karabiner kitty nvim skhd yabai zsh

# reload zsh
source ~/.zshrc

# Install global Composer packages
composer global install

#install global go deps
go install mvdan.cc/gofumpt@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/segmentio/golines@latest

# Create a basic directory
mkdir -p $HOME/Documents/sites
mkdir -p $HOME/Documents/code
mkdir -p $HOME/Documents/gocode
mkdir -p $HOME/screenshots

touch ${HOME}/.hushlogin

# Set macOS preferences
source .macos
