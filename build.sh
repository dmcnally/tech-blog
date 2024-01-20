#!/usr/bin/env bash
echo "Building ..."

/usr/local/bin/bundle install
/usr/local/bin/bundle exec jekyll build
