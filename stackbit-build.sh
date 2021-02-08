#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://localhost:8092/init.js 60213e3ff4bdf41d1a2be516

echo "stackbit-build.sh: finished build"
