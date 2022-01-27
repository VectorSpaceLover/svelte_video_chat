all: configure build
init:
	bash scripts/init.sh
update:
	bash scripts/update.sh


configure:
	cp configs/api/default.json api/config/default.json && \
	cp -r configs/web/* web/src/node_modules/config/
build: build-web build-api
build-web:
	cp -r configs/web/* web/src/node_modules/config/
	docker-compose build web
build-api:
	cp configs/api/default.json api/config/default.json
	docker-compose build api

up:
	docker-compose up -d

down:
	docker-compose down

nginx:
	docker exec -it nginx nginx -t && \
	docker exec -it nginx nginx -s reload

pull: pull-web pull-api
pull-web:
	cd web && git pull origin master
pull-api:
	cd api && git pull origin master

