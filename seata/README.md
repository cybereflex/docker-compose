# Seata Server

## Command

```shell
## start seata server standalone
$ docker compose -f docker-compose.standalone.yml -p seata-server-standalone up -d

## start seata server cluster
$ docker compose -f docker-compose.cluster.yml -p seata-server-cluster up -d

## stop seata server standalone
$ docker compose -p seata-server-standalone down --rmi local -v

## stop seata server cluster
$ docker compose -p seata-server-cluster down --rmi local -v
```

## Reference

- [Official Website](https://seata.apache.org/)

- [Official Github](https://github.com/apache/incubator-seata)

- [Official DockerHub](https://hub.docker.com/r/apache/seata-server)