#!/bin/bash

cd 'dirname $0'

echo 'install homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'brew doctor, update, upgrade'
brew doctor && brew cleanup && brew update --verbose && brew upgrade --verbose

echo 'install app from brewfile'
brew bundle --file ../config/Brewfile --verbose
