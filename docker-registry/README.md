# Docker Registry

## Command
```shell
## start docker registry
$ docker compose -f docker-compose.yml -p registry up -d

## stop docker registry
$ docker compose -p registry down --rmi local -v
```

## Reference

- [Official Github](https://github.com/distribution/distribution)

- [Official DockerHub](https://hub.docker.com/_/registry)