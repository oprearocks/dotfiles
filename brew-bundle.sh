#!/bin/bash

echo "Updating/upgrading packages"
brew update && brew upgrade

echo "Installing basic packages set"
brew install $(cat brewfile-basic)

brew linkapps
brew cleanup
brew prune

echo "Installing applications via Cask"
brew cask install $(cat caskfile)
