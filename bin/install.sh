#!/bin/zsh

echo "git clone"
git clone https://github.com/trsxxii/dotfiles.git && cd dotfiles

echo "make symlink"
make symlink
