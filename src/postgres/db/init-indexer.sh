#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
CREATE USER ${POSTGRES_MUD_INDEXER_USER} WITH PASSWORD '${POSTGRES_MUD_INDEXER_PASSWORD}';
CREATE DATABASE ${POSTGRES_MUD_INDEXER_DB};
GRANT ALL PRIVILEGES ON DATABASE ${POSTGRES_MUD_INDEXER_DB} TO ${POSTGRES_MUD_INDEXER_USER};

CREATE USER ${POSTGRES_MUD_VIEWER_USER} WITH PASSWORD '${POSTGRES_MUD_VIEWER_PASSWORD}';
GRANT pg_read_all_data TO ${POSTGRES_MUD_INDEXER_USER};
EOSQL