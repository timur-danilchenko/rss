include .env

BIN=rss

all:
	@go build
	@./$(BIN)

db_shell:
	@psql $(DB_NAME)

db_up:
	@cd sql/schema; goose postgres $(DB_URL) up 

db_down:
	@cd sql/schema; goose postgres $(DB_URL) down
