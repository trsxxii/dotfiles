all: symlink brew gem defaults other

symlink:
	bin/symlink.sh
	
brew:
	bin/brew.sh

gem:
	bin/gem.sh

defaults:
	bin/defaults.sh
  
other:
	bin/other.sh
