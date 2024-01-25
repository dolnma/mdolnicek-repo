include .env
export

dev:
	@docker-compose \
					-f docker-compose.yml \
					-f docker-compose.dev.yml \
					up --build --force-recreate

prod:
	@docker-compose \
					-f docker-compose.yml \
					-f docker-compose.prod.yml \
					up -d --build --force-recreate

deploy:
	@git pull origin master  # Pull the latest code from the master branch
	@make prod               # Start production deployment