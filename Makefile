include .env

BIN=rss

all:
	@go build
	@./$(BIN)

db_shell:
	@psql $(DB_NAME)

db_migrate:
	@cd sql/schema; goose postgres $(DB_URL) up 

db_rollback:
	@cd sql/schema; goose postgres $(DB_URL) down

db_prepare:
	@sqlc generate