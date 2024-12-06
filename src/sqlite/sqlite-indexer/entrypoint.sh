#!/bin/sh

echo *********************
echo * ENV               *
echo *********************
env
echo *********************

node /app/node_modules/@latticexyz/store-indexer/bin/sqlite-indexer.js