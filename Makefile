ENV_FILE=.env

ifneq ("$(wildcard $(ENV_FILE))","")
	include .env
	export
else
    $(error ENV_FILE Not Found. Enter the command: `cp .env.example .env`)
endif

up:
	docker-compose up -d

down:
	docker-compose down --remove-orphans

restart: down up