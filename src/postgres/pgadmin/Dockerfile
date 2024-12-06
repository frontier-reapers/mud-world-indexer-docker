FROM dpage/pgadmin4:8 as base

COPY preferences.json /pgadmin4/preferences.json
COPY servers.json /pgadmin4/servers.json
COPY --chown=pgadmin:nobody --chmod=600 .pgpass /var/lib/pgadmin/.pgpass

EXPOSE 8086
