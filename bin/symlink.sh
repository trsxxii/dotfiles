#!/bin/bash

cd $(dirname $0)

dotfiles=(
	../config/.zshrc
	../config/.secret.zshrc
)

echo "symbolic link"
for file in "${dotfiles[@]}"; do
	ln -svf $file ~/
done 

mkdir -p ~/.config/{karabiner,git}
ln -svf ../config/karabiner.json ~/.config/karabiner/
ln -svf ../config/ignore ~/.config/git/

source ~/.zshrc
