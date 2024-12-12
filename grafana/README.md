# Grafana

```shell
## start grafana
$ docker compose -f docker-compose.yml -p grafana up -d

## stop grafana
$ docker compose -p grafana down --rmi local -v
```

- [Website](https://grafana.com/)

- [GitHub](https://github.com/grafana/grafana)

- [DockerHub](https://hub.docker.com/r/grafana/grafana)

## Prometheus

- [GitHub](https://github.com/prometheus/prometheus)

- [DockerHub](https://hub.docker.com/r/prom/prometheus)

## AlertManager

- [GitHub](https://github.com/prometheus/prometheus)

- [DockerHub](https://hub.docker.com/r/prom/alertmanager)

## Middleware Exporter

### Elasticsearch Exporter

- [GitHub](https://github.com/prometheus-community/elasticsearch_exporter)

- [DockerHub](https://hub.docker.com/r/prometheuscommunity/elasticsearch-exporter)

### Kafka Exporter

- [GitHub](https://github.com/danielqsj/kafka_exporter)

- [DockerHub](https://hub.docker.com/r/danielqsj/kafka-exporter)

### Mongo Exporter

- [GitHub](https://github.com/percona/mongodb_exporter)

- [DockerHub](https://hub.docker.com/r/percona/mongodb_exporter)

### MySQL Exporter

- [GitHub](https://github.com/prometheus/mysqld_exporter)

- [DockerHub](https://hub.docker.com/r/prom/mysqld-exporter/)

### PostgreSQL Exporter

- [GitHub](https://github.com/prometheus-community/postgres_exporter)

- [DockerHub](https://hub.docker.com/r/prometheuscommunity/postgres-exporter)

### Redis Exporter

- [GitHub](https://github.com/oliver006/redis_exporter)

- [DockerHub](https://hub.docker.com/r/oliver006/redis_exporter)
