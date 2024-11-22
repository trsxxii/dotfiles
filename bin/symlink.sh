#!/bin/zsh

cd $(dirname $0)

dotfiles=(
	~/dotfiles/config/.zshrc
	~/dotfiles/config/.secret.zshrc
)

echo "symbolic link"
for file in "${dotfiles[@]}"; do
	ln -svf $file ~/
done 

mkdir -p ~/.config/{karabiner,git}
ln -svf ~/dotfiles/config/karabiner.json ~/.config/karabiner/
ln -svf ~/dotfiles/config/ignore ~/.config/git/

source ~/.zshrc
