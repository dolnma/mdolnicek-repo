include .env
export

dev:
	@docker-compose \
					-f docker-compose.yml \
					-f docker-compose.dev.yml \
					up -d --build --force-recreate

prod:
	@docker-compose \
					-f docker-compose.yml \
					-f docker-compose.prod.yml \
					up -d --build --force-recreate