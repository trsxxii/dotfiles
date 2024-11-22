#!/bin/zsh

cd $(dirname $0)

echo 'setup rbenv'
rbenv init
rbenv install '3.3.6'
rbenv local '3.3.6'

echo 'bundle install'
rbenv exec gem install bundler
rbenv exec bundle install --gemfile ../config/Gemfile
