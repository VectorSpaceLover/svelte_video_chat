#!/bin/bash

PLUGIN_DIR="./api/src/plugins/$@"
PLUGIN_REPO="ssh://bitbucket.org/waysystems/sveathers-api-plugin-$@.git"

if [ ! -d "$PLUGIN_DIR" ]; then
  echo "init api plugin: $@, dir: ${PLUGIN_DIR}"
  git clone "$PLUGIN_REPO" "$PLUGIN_DIR"
fi
