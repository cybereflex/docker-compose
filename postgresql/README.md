# Postgresql

## Command

```shell
## start postgres standalone
$ docker compose -f docker-compose.standalone.yml -p postgres-standalone up -d

## start postgres replica
$ docker compose -f docker-compose.replica.yml -p postgres-replica up -d

## stop postgres standalone
$ docker compose -p postgres-standalone down --rmi local -v

## stop postgres replica
$ docker compose -p postgres-replica down --rmi local -v
```

## Reference

- [Official Website](https://www.postgresql.org/)

- [Official Github](https://github.com/postgres/postgres)

- [Official DockerHub](https://hub.docker.com/_/postgres)