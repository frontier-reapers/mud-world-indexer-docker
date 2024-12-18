## PostgreSQL Indexer

### Configure Services

> [!TIP]
> Change the `RPC_HTTP_URL` and `RPC_WS_URL` in the `.env` file in the `/src/sqlite` folder to a RPC server that is performant from you in a large world the indexer will create quite a lot of traffic.

- in `/src/postgres/.env` change `RPC_HTTP_URL` and `RPC_WS_URL` to a ETH-JSON 2.0 RPC URL for the desired chain.
- in `/src/postgres/.env` change the `CHAIN_ID` to the correct chain ID for the network you are using.
- in `/src/postgres/.env` change `STORE_ADDRESS` and `START_BLOCK` to the desired world, and start block is the first block the world was mined from.

### Bringing up the containers

You can bring up the containers by changing into the `/src/postgres` folder and running `docker compose up`:

```sh
cd $HOME/mud-world-indexer-docker/src/postgres
docker compose up
```

> [!WARNING]
> It will take some time to get current, with a world, as long as the container is running it will stay up to date.

### Accessing Services

The indexer frontend will be running on `http://localhost:3001` and you can access the world explorer from `http://localhost:13690`. You can also access the SQLite browser on `http://localhost:8080`.
