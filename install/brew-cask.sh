#!/bin/bash

# Install Caskroom
# brew tap caskroom/cask
# brew install brew-cask
# brew tap caskroom/versions

# Install packages
apps=(
    # 1password
    appcleaner
    # atom
    # bettertouchtool
    github-desktop
    # google-chrome
    iterm2
    # slack
    sublime-text
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package
