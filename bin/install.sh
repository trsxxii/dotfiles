#!/bin/bash

echo "install command line tools"
xcode-select --install

echo "git clone"
git clone https://github.com/trsxxii/dotfiles.git && cd dotfiles

echo "make all"
make all
