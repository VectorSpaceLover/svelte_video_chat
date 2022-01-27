#!/bin/bash
source .env
DIR=$(pwd)
DIR_API="$DIR/api"
DIR_WEB="$DIR/web"

REPO=origin
BRANCH=master
REPO_WEB=origin
BRANCH_WEB=master

#env.example
if [ -d "$DIR_API" ]; then
	cd "$DIR_API" && git pull $REPO $BRANCH
fi

if [ -d "$DIR_WEB" ]; then
	cd "$DIR_WEB" && git pull $REPO_WEB $BRANCH_WEB
fi

cd $DIR
for i in "${API_PLUGINS[@]}"; do
	#echo "api plugin: $i";
	bash  ./scripts/update.api.plugin.sh $i
done

for i in "${WEB_PLUGINS[@]}"; do
	#echo "web plugin: $i";
	bash  ./scripts/update.web.plugin.sh $i
done


