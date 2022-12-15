all: install symlink defaults

install:
  bin/install.sh

symlink:
  bin/simlink.sh
  
defaults:
  bin/defaults.sh
  
