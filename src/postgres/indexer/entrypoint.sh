#!/bin/sh

node /app/node_modules/@latticexyz/store-indexer/bin/postgres-decoded-indexer.js & node /app/node_modules/@latticexyz/store-indexer/bin/postgres-frontend.js