# Opensearch

## Command

```shell
## start opensearch standalone
$ docker compose -f docker-compose.standalone.yml -p opensearch-standalone up -d

## start opensearch cluster
$ docker compose -f docker-compose.cluster.yml -p opensearch-cluster up -d

## stop opensearch standalone
$ docker compose -p opensearch-standalone down --rmi local -v

## stop opensearch cluster
$ docker compose -p opensearch-cluster down --rmi local -v
```

## Reference

- [Official Website](https://opensearch.org/)

- [Official Github](https://github.com/opensearch-project/OpenSearch)

- [Official DockerHub](https://hub.docker.com/u/opensearchproject)