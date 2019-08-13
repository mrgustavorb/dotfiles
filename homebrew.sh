#!/usr/bin/env bash

echo ----------------------------------
echo Install Homebrew
echo ----------------------------------

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

echo ----------------------------------
echo Important packages from brew
echo ----------------------------------

brew install git
brew install zsh
brew install vim
brew install nvim
brew install wget
brew install libpq
brew install tmux
brew install node
brew install yarn
brew install ngrep
brew install ctags
brew install gpg
brew install openssl
brew install imagemagick
brew install go
brew install htop
brew install elixir

brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" caffeine
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" gpgtools
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" zoomus
brew cask install --appdir="/Applications" postico
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" telegram-desktop
brew cask install --appdir="/Applications" whatsapp
brew cask install --appdir="/Applications" firefox
