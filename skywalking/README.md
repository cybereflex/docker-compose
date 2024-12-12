# Skywalking

## Command

```shell
## start skywalking es
$ docker compose -f docker-compose.es.yml -p skywalking-es up -d

## start skywalking banyandb
$ docker compose -f docker-compose.banyandb.yml -p skywalking-banyandb up -d

## stop skywalking es
$ docker compose -p skywalking-es down --rmi local -v

## stop skywalking banyandb
$ docker compose -p skywalking-banyandb down --rmi local -v
```

## Reference

- [Official Website](https://skywalking.apache.org/)

- [Official Github](https://github.com/apache/skywalking)

- [Official DockerHub](https://hub.docker.com/u/apache?page=1&search=skywalking)