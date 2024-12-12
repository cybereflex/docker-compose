# Debezium

## Command
```shell
## start debezium
$ docker compose -f docker-compose.connect.yml -p debezium-connect up -d

## stop debezium
$ docker compose -p debezium-connect down --rmi local -v

## add mysql connector
$ curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d @mysql-connector.json

## add postgresql connnector
$ curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d @postgresql-connector.json
```

## Reference

- [Official Website](https://debezium.io/)

- [Official Github](https://github.com/debezium/debezium)