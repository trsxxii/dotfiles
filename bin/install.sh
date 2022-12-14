#!/bin/bash

echo 'install xcode'
xcode-select --install

echo 'install rosetta'
sudo softwareupdate --install-rosetta --agree-to-licensesudo softwareupdate --install-rosetta --agree-to-license

echo 'install homebrew'
which /opt/homebrew/bin/brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'brew doctor, update, upgrade'
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew doctor && brew update --verbose && brew upgrade --verbose

echo 'install app from brewfile'
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew bundle --file ../Brewfile --verbose

echo 'bundle install'
gem install bundler
bundle install --gemfile ../Gemfile

echo 'xcversion update'
xcversion update
