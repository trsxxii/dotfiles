#!/bin/bash

echo 'bundle install'
gem install bundler
bundle install --gemfile ./config/Gemfile
