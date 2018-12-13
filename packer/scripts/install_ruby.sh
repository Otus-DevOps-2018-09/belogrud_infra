#!/bin/sh

set -e

# Step 1.
# Install ruby.
apt update
apt install -y ruby-full ruby-bundler build-essential
