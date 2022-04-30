#!/bin/bash

source ./.env

docker exec -ti kong-database psql -U $POSTGRES_USER -d kong -c "create database $KONGA_DB"
docker exec -ti kong-database psql -U $POSTGRES_USER -d kong -c "create user $KONGA_DB_USER with encrypted password '$KONGA_DB_PASSWORD'"
docker exec -ti kong-database psql -U $POSTGRES_USER -d kong -c "grant all privileges on database $KONGA_DB to $KONGA_DB_USER;"
