#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://dc7e58dcd04f.ngrok.io/pull/6089113b0004f488f5fbd223

# build site
npm run build

echo "stackbit-build.sh: finished build"
