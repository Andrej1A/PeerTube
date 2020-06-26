#!/bin/bash

set -eu

cd client

mkdir -p "./dist"

NODE_ENV=production npm run webpack -- --config webpack/webpack.video-embed.js --mode production --json > "./dist/embed-stats.json"
