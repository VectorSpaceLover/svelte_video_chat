#!/bin/bash

PLUGIN_DIR="./web/src/node_modules/plugins/$@"
PLUGIN_REPO="ssh://bitbucket.org/waysystems/sveathers-web-plugin-$@.git"

if [ ! -d "$PLUGIN_DIR" ]; then
  echo "init web plugin: $@, dir: ${PLUGIN_DIR}"
  git clone "$PLUGIN_REPO" "$PLUGIN_DIR"
fi



