#!/bin/bash
REPO=origin
BRANCH=master
PLUGIN_DIR="./api/src/plugins/$@"

if [ -d "$PLUGIN_DIR" ]; then
  echo "updating api plugin: $@, dir: ${PLUGIN_DIR}"
  cd "$PLUGIN_DIR" && git pull $REPO $BRANCH
fi



