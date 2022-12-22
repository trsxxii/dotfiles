#!/bin/bash

cd $(dirname $0)

echo 'setup rbenv'
export PATH=$HOME/.rbenv/bin:$PATH
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"
rbenv install '3.1.3'
rbenv global '3.1.3'
eval "$(~/.rbenv/bin/rbenv init)"

echo 'bundle install'
gem install bundler
bundle install --gemfile ../config/Gemfile
