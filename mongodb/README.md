# Mongo

## Command
```shell
## start mongo standalone
$ docker compose -f docker-compose.standalone.yml -p mongo-standalone up -d

## start mongo replica
$ docker compose -f docker-compose.replica.yml -p mongo-replica up -d

## stop mongo standalone
$ docker compose -p mongo-standalone down --rmi local -v

## stop mongo replica
$ docker compose -p mongo-replica down --rmi local -v
```

## Reference

- [Official Mongo Website](https://www.mongodb.com/)

- [Official Mongo Github](https://github.com/mongodb/mongo)

- [Official Mongo Express Github](https://github.com/mongo-express/mongo-express)

- [Official Mongo DockerHub](https://hub.docker.com/_/mongo)

- [Official Mongo Express DockerHub](https://hub.docker.com/_/mongo-express)