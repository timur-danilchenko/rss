# RSS Aggregator

## Description
Really Simple Syndication. It's an easy way to keep up with news and information that's important to you, and helps you avoid the conventional methods of browsing or searching for information on websites.

## Build project
First of all, we need to create ```.env``` file, which will contain information about port and database.  There must be a DB_URL variable; in the example, for convenience, everything is separate.
```.env
PORT=8000
DB_HOST=localhost
DB_PORT=5432
DB_USER=user
DB_PASSWORD=pass
DB_NAME=rss
DB_URL=postgres://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=disable
```

The directory contains a ```Makefile```, which simplifies the work with service deployment

Here is a list of available commands
```
all: # builds and runs service
db_shell: # connects to db shell
db_migrate: # migrates database
db_rollback: # rollback last migration
db_prepare: # prepare schemas/queries for usage with go
```

To start service for the first time run there commands
```bash
$ make db_migrate
$ make db_prepare
$ make
```

After changes in schema
```bash
$ make db_migrate
$ make
```

After changes in queries
```bash
$ make db_prepare
$ make
```
