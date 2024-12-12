# Redis

## Command

```shell
## start redis standalone
$ docker compose -f docker-compose.standalone.yml -p redis-standalone up -d

## start redis cluster
$ docker compose -f docker-compose.cluster.yml -p redis-cluster up -d

## start redis sentinel
$ docker compose -f docker-compose.sentinel.yml -p redis-sentinel up -d

## stop redis standalone
$ docker compose -p redis-standalone down --rmi local -v

## stop redis cluster
$ docker compose -p redis-cluster down --rmi local -v

## stop redis sentinel
$ docker compose -p redis-sentinel down --rmi local -v
```

## Reference

- [Official Website](https://redis.io/)

- [Official Github](https://github.com/redis/redis)

- [Official DockerHub](https://hub.docker.com/u/redis)