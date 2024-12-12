# Nacos

## Command

```shell
## start nacos standalone
$ docker compose -f docker-compose.standalone.yml -p nacos-standalone up -d

## start nacos cluster
$ docker compose -f docker-compose.cluster.yml -p nacos-cluster up -d

## stop nacos standalone
$ docker compose -p nacos-standalone down --rmi local -v

## stop nacos cluster
$ docker compose -p nacos-cluster down --rmi local -v
```

## Reference

- [Official Website](https://nacos.io/)

- [Official Github](https://github.com/alibaba/nacos)

- [Official DockerHub](https://hub.docker.com/r/nacos/nacos-server)