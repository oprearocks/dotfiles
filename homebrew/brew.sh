#!/bin/bash

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils

# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils

# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed


# Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion2

# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
brew install grc

# Install wget
brew install wget

# Install more recent versions of some OS X tools
brew install vim
brew install neovim
brew install grep
brew install openssh
brew install screen


# Install other useful binaries
brew install the_silver_searcher
brew install fzf

brew install git
brew install imagemagick
brew install node # This installs `npm` too using the recommended installation method
brew install rename
brew install tree
brew install zopfli
brew install ffmpeg

brew install terminal-notifier

brew install pidcat   # colored logcat guy

brew install fish
brew install zsh
brew install ctop
brew install htop
brew install openssl@1.1
brew install yarn
# Remove outdated versions from the cellar
brew cleanup
