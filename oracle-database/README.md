# Oracle Database

## Command

```shell
## start oracle database
$ docker compose -f docker-compose.yml -p oracle-database up -d

## stop  oracle database
$ docker compose -p oracle-database down --rmi local -v
```

## Reference

- [Official Website](https://www.oracle.com/apac/database/)