#!/bin/sh

set -x

#install missing gems for local dev as we are using base image compiled for production
gem install bundler -v 2.5.11
bundle install

# Execute the main process of the container
exec "$@"
