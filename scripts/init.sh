#!/bin/bash
source .env
DIR_API=api
DIR_WEB=web

#env.example
if [ ! -d "$DIR_API" ]; then
	git clone ssh://bitbucket.org/waysystems/sveathers-api-base.git api
fi

if [ ! -d "$DIR_WEB" ]; then
	git clone ssh://bitbucket.org/waysystems/sveathers-web-base.git web
fi

for i in "${API_PLUGINS[@]}"; do
	#echo "api plugin: $i";
	bash  ./scripts/init.api.plugin.sh $i
done

for i in "${WEB_PLUGINS[@]}"; do
	#echo "web plugin: $i";
	bash  ./scripts/init.web.plugin.sh $i
done


