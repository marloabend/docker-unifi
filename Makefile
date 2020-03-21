.PHONY: start stop shell

start: stop
	@docker-compose -f docker-compose.yml up

prod: stop
	@docker-compose -f docker-compose.yml up -d

stop:
	@docker-compose -f docker-compose.yml down

shell:
	@-docker-compose -f docker-compose.yml exec controller sh
