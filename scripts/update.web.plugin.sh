#!/bin/bash
REPO=origin
BRANCH=master
PLUGIN_DIR="./web/src/node_modules/plugins/$@"

if [ -d "$PLUGIN_DIR" ]; then
  echo "updating web plugin: $@, dir: ${PLUGIN_DIR}"
  cd "$PLUGIN_DIR" && git pull $REPO $BRANCH
fi



