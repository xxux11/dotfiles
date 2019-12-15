#!/usr/bin/env bash

xcode-select --install

echo "Installing HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Updating HomeBrew"
brew update
brew upgrade

echo "Installing HomeBrew apps"
brew install python3
brew install pipenv
brew install node
brew install tree
brew install git
brew install htop
brew install ripgrep
brew install unrar
brew install tree
brew install kubectl 
brew install speedtest-cli

brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8
brew cask install adoptopenjdk11
brew install maven

brew cask install iterm2
brew cask install visual-studio-code
brew cask install intellij-idea-ce
brew cask install intelliscape-caffeine
brew cask install sublime-text
brew cask install pgadmin4
brew cask install maccy
brew cask install pycharm-ee
brew cask install typora
brew cask install postman  
brew cask install docker
brew cask install slack
brew cask install alfred
brew cask install cheatsheet

brew cask install google-chrome
brew cask install virtualbox
brew cask install spotify
brew cask install google-backup-and-sync
brew cask install vlc
brew cask install hyperdock
brew cask install divvy
brew cask install safeincloud-password-manager
brew cask install flux 

brew tap homebrew/cask-fonts
brew cask install font-source-code-pro

brew cleanup
