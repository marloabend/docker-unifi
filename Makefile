.PHONY: prod remove-data

prod: detached

dev: down
	@docker-compose -f docker-compose.yml up

detached: down
	@docker-compose -f docker-compose.yml up -d

down:
	@docker-compose -f docker-compose.yml down

shell-controller:
	@-docker-compose -f docker-compose.yml exec controller sh

remove-lib:
	sudo rm -rf ./data/lib

remove-logs:
	sudo rm -rf ./data/log

remove-runtime:
	sudo rm -rf ./data/lib

remove-data: remove-lib remove-logs remove-runtime
