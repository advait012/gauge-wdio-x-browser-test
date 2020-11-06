#!/bin/bash
set -e
# TODO: for now in pipeline, tests will be executing on internet explorer only, will work to execute it on multiple browser parallely 
yarn test:chrome
 
