.PHONY: prod dev detached down pull update shell remove-data remove-runtime clean

prod: detached

dev: down
	@docker-compose -f docker-compose.yml up

detached: down
	@docker-compose -f docker-compose.yml up -d

down:
	@docker-compose -f docker-compose.yml down

pull:
	@docker-compose pull

update: pull down prod

shell:
	@-docker-compose -f docker-compose.yml exec controller sh

remove-data:
	@sudo rm -rf ./data/unifi

remove-runtime:
	@sudo rm -rf ./data/run

clean: remove-data remove-runtime
