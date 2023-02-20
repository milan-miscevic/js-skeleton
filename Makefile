DOCKER=docker-compose -f ./docker/docker-compose.yml
NODE=node18

build: install

install:
	$(DOCKER) build
	$(DOCKER) run --rm $(NODE) npm i

unit:
	$(DOCKER) run --rm node14 npm run test
	$(DOCKER) run --rm node16 npm run test
	$(DOCKER) run --rm $(NODE) npm run test
	$(DOCKER) run --rm node19 npm run test
