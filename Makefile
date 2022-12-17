all: brew gem defaults symlink other

brew:
	bin/brew.sh

gem:
	bin/gem.sh

defaults:
	bin/defaults.sh

symlink:
	bin/simlink.sh
  
other:
	bin/other.sh
