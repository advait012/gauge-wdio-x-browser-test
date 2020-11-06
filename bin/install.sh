#!/bin/bash
set -e

source ~/.nvm/nvm.sh

# Use node 10
nvm use v10
npm install -g yarn

yarn cache clean
yarn
