# MySQL

## Command
```shell
## start mysql standalone
$ docker compose -f docker-compose.standalone.yml -p mysql-standalone up -d

## start mysql replica
$ docker compose -f docker-compose.replica.yml -p mysql-replica up -d

## stop mysql standalone
$ docker compose -p mysql-standalone down --rmi local -v

## stop mysql replica
$ docker compose -p mysql-replica down --rmi local -v
```

## Reference

- [Official Website](https://www.mysql.com/)

- [Official Github](https://github.com/mysql/mysql-server)

- [Official DockerHub](https://hub.docker.com/_/mysql)