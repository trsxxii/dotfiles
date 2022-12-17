#!/bin/bash

echo 'install homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'brew doctor, update, upgrade'
brew doctor && brew update --verbose && brew upgrade --verbose

echo 'install app from brewfile'
brew bundle --file ./config/Brewfile --verbose
