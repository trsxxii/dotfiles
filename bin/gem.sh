#!/bin/bash

cd $(dirname $0)

echo 'setup rbenv'
rbenv init
rbenv install '3.1.3'
rbenv local '3.1.3'

echo 'bundle install'
rbenv exec gem install bundler
rbenv exec bundle install --gemfile ../config/Gemfile
