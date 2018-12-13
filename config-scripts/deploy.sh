#!/bin/sh

# Step 3.
# Download dependences, execute bunlde, start puma service.
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d

