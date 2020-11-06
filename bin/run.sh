#!/bin/bash
set -e

source ~/.nvm/nvm.sh

# Run Node 10
nvm use 10 >/dev/null

# Make sure the locally installed node executables are available to the script
export PATH=$PATH:./node_modules/.bin

# Set maximum old space size - 4GB
export NODE_OPTIONS=--max_old_space_size=4096

# Run whatever command was passed to the script.
eval $@
