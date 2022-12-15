#!/bin/bash

dotfiles=(../.zshrc)
for file in "${dotfiles[@]}"; do
  ln -svf $file ~/
done 

ln -svf ../config/karabiner.json ~/.config/karabiner/
ln -svf ../config/ignore ~/.config/git/
