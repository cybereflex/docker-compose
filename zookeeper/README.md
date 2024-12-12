# Zookeeper

## Command

```shell
## start zookeeper cluster
$ docker compose -f docker-compose.cluster.yml -p zookeeper-cluster up -d

## start zookeeper standalone
$ docker compose -f docker-compose.standalone.yml -p zookeeper-standalone up -d

## stop zookeeper cluster
$ docker compose -p zookeeper-cluster down --rmi local -v

## stop zookeeper standalone
$ docker compose -p zookeeper-standalone down --rmi local -v
```

## Reference

- [Official Website](https://zookeeper.apache.org/)

- [Official Github](https://github.com/apache/zookeeper)

- [Official DockerHub](https://hub.docker.com/_/zookeeper)