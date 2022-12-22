#!/bin/bash

cd $(dirname $0)

echo 'setup rbenv'
export PATH=$HOME/.rbenv/bin:$PATH
rbenv install '2.6.8'
rbenv global '2.6.8'
eval "$(~/.rbenv/bin/rbenv init)"

echo 'bundle install'
gem install bundler
bundle install --gemfile ../config/Gemfile
