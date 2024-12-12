# Debezium

## Command
```shell
## start debezium connect
$ docker compose -f docker-compose.yml -p debezium up -d

## stop debezium connect
$ docker compose -p debezium down --rmi local -v

## add mysql connector
$ curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d @mysql-connector.json

## add postgresql connnector
$ curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d @postgresql-connector.json

## add oracle connnector
$ curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d @oracle-connector.json
```

## Reference

- [Official Website](https://debezium.io/)

- [Official Github](https://github.com/debezium/debezium)