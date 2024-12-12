# RabbitMQ

## Command

```shell
## start rabbitmq standalone
$ docker compose -f docker-compose.standalone.yml -p rabbitmq-standalone up -d

## start rabbitmq cluster
$ docker compose -f docker-compose.cluster.yml -p rabbitmq-cluster up -d

## stop rabbitmq standalone
$ docker compose -p rabbitmq-standalone down --rmi local -v

## stop rabbitmq cluster
$ docker compose -p rabbitmq-cluster down --rmi local -v
```

## Reference

- [Official Website](https://www.rabbitmq.com/)

- [Official Github](https://github.com/rabbitmq)

- [Official DockerHub](https://hub.docker.com/_/rabbitmq)