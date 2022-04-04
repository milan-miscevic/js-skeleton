DOCKER=docker-compose -f ./docker/docker-compose.yml
NODE=node16

unit:
	$(DOCKER) run --rm node12 npm run test
	$(DOCKER) run --rm node14 npm run test
	$(DOCKER) run --rm $(NODE) npm run test
	$(DOCKER) run --rm node17 npm run test
