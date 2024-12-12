# Kafka

## Command
```shell
## start kafka standalone
$ docker compose -f docker-compose.standalone.yml -p kafka-standalone up -d

## start kafka kraft
$ docker compose -f docker-compose.kraft.yml -p kafka-kraft up -d

## stop kafka standalone
$ docker compose -p kafka-standalone down --rmi local -v

## stop kafka kraft
$ docker compose -p kafka-kraft down --rmi local -v
```

## Reference

- [Official Kafka Website](https://kafka.apache.org/)

- [Official Kafka Github](https://github.com/apache/kafka)

- [Official Kafbat UI Github](https://github.com/kafbat/kafka-ui)

- [Official Kafka DockerHub](https://hub.docker.com/r/apache/kafka)

- [Official Kafbat UI DockerHub](https://hub.docker.com/r/kafbat/kafka-ui)