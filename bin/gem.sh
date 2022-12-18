#!/bin/bash

cd 'dirname $0'

echo 'bundle install'
gem install bundler
bundle install --gemfile ../config/Gemfile
