#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# brew tap homebrew/versions
# brew tap homebrew/dupes
# brew tap Goles/battery

# Make sure we’re using the latest Homebrew
# brew update

# Upgrade any already-installed formulae
# brew upgrade --all

# Install the Homebrew packages I use on a day-to-day basis.
#
# - Languages: rvm (Ruby), nvm (Node.js), go
# - Databases: Progres, MySQL, Redis, Mongo, Elasticsearch
# - Servers: Apache, Nginx
# - Fuck (https://github.com/nvbn/thefuck): Correct your previous command. Note
#   that this needs to be added to zsh or bash. See the project README.
# - Foreman & Forego:
# - Tree (http://mama.indstate.edu/users/ice/tree/): A directory listing utility
#   that produces a depth indented listing of files.
# - Tor ():
# - autoenv (https://github.com/kennethreitz/autoenv): this utility makes it
#   easy to apply environmen  t variables to projects. I mostly use it for Go and
#   Node.js projects. For Ruby projects, I just use Foreman or Forego.
# - autojump (https://github.com/joelthelion/autojump): a faster way to navigate
#   your filesystem.
# Note that I install nvm (https://github.com/creationix/nvm) instead
# of installing Node directly. This gives me more explicit control over
# which version I'm using.

apps=(
    bash-completion2
    coreutils
    # moreutils
    findutils
    git
    # hub
    grep
    brew-cask-completion
    grep
    openssh
    # imagemagick
    source-highlight
    wget
    wifi-password
    tig
    redis
    postgres
    fzf
    zsh-syntax-highlighting
)

brew install "${apps[@]}"

$(brew --prefix)/opt/fzf/install

# Remove outdated versions from the cellar
brew cleanup
