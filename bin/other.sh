#!/bin/bash

cd 'dirname $0'

if [[ "$(uname -m)" == arm64 ]]; then
  echo 'install rosetta'
  sudo softwareupdate --install-rosetta --agree-to-licensesudo softwareupdate --install-rosetta --agree-to-license
fi
