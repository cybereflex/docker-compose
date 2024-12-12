# Zipkin

## Command

```shell

## start zipkin memory
$ docker compose -f docker-compose.mem.yml -p zipkin-mem up -d

## start zipkin es
$ docker compose -f docker-compose.es.yml -p zipkin-es up -d

## start zipkin mysql
$ docker compose -f docker-compose.mysql.yml -p zipkin-mysql up -d

## stop zipkin memory
$ docker compose -p zipkin-mem down --rmi local -v

## stop zipkin es
$ docker compose -p zipkin-es down --rmi local -v

## stop zipkin mysql
$ docker compose -p zipkin-mysql down --rmi local -v
```

## Reference

- [Official Website](https://zipkin.io)

- [Official Github](https://github.com/openzipkin)

- [Official DockerHub](https://hub.docker.com/_/zookeeper)