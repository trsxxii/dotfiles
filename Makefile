all: brew gem defaults symlink other

brew:
	bin/brew.sh

gem:
	bin/gem.sh

defaults:
	bin/defaults.sh

symlink:
	bin/symlink.sh
  
other:
	bin/other.sh
