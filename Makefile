.PHONY: prod clean

prod: detached

dev: down
	@docker-compose -f docker-compose.yml up

detached: down
	@docker-compose -f docker-compose.yml up -d

down:
	@docker-compose -f docker-compose.yml down

shell-controller:
	@-docker-compose -f docker-compose.yml exec controller sh

remove-data:
	@sudo rm -rf ./data/unifi

remove-runtime:
	@sudo rm -rf ./data/lib

clean: remove-data remove-runtime
