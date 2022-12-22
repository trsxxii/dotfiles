#!/bin/bash

cd $(dirname $0)
source ~/.zshrc

echo 'setup rbenv'
rbenv install '3.1.3'
rbenv local '3.1.3'

echo 'bundle install'
rbenv exec gem install bundler
bundle install --gemfile ../config/Gemfile
