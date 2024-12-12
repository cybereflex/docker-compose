# Elasticsearch

## Command

```shell
## start elasticsearch standalone
$ docker compose -f docker-compose.standalone.yml -p elasticsearch-standalone up -d

## start elasticsearch cluster
$ docker compose -f docker-compose.cluster.yml -p elasticsearch-cluster up -d

## stop elasticsearch standalone
$ docker compose -p elasticsearch-standalone down --rmi local -v

## stop elasticsearch cluster
$ docker compose -p elasticsearch-cluster down --rmi local -v
```

## Reference

- [Official Website](https://www.elastic.co/elasticsearch)

- [Official Github](https://github.com/elastic/elasticsearch)

- [Official DockerHub](https://hub.docker.com/_/elasticsearch)
