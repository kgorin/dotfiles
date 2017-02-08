#!/bin/bash

# Install Caskroom
# brew tap caskroom/cask
# brew install brew-cask
# brew tap caskroom/versions

# Install packages
apps=(
    # kaleidoscope
    # 1password
    appcleaner
    # atom
    bettertouchtool
    dash
    dropbox
    github-desktop
    # google-chrome
    istat-menus
    iterm2
    rescuetime
    # skype
    # slack
    spectacle
    sublime-text
    teamviewer
    utorrent
    vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
