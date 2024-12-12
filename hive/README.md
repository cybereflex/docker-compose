# Hive

## Command
```shell
## start hive embedded
$ docker compose -f docker-compose.embedded.yml -p hive-embedded up -d

## start hive external
$ docker compose -f docker-compose.external.yml -p hive-external up -d

## stop hive embedded
$ docker compose -p hive-embedded down --rmi local -v

## stop hive external
$ docker compose -p hive-external down --rmi local -v
```

## Reference

- [Official Website](https://hive.apache.org/)

- [Official Github](https://github.com/apache/hive)

- [Official DockerHub](https://hub.docker.com/r/apache/hive)
