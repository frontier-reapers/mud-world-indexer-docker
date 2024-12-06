FROM node:18-alpine3.20 AS base
RUN apk add --no-cache make
WORKDIR /app
COPY entrypoint.sh /app/entrypoint.sh
RUN npm install @latticexyz/explorer
ENTRYPOINT [ "sh", "/app/entrypoint.sh" ]
