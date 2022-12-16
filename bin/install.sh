#!/bin/bash

xcode-select --install
git clone https://github.com/trsxxii/dotfiles.git && cd dotfiles
make all
