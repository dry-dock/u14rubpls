#!/bin/bash -e

echo "================= Installing REE 1.8.7 ==================="
rvm requirements
rvm install ree-1.8.7
rvm use ree-1.8.7

# Install ruby gems
gem install bundler
