# Oracle Database

## Command

```shell
## start oracle database free
$ docker compose -f docker-compose.free.yml -p oracle-database-free up -d

## start oracle database enterprise
$ docker compose -f docker-compose.enterprise.yml -p oracle-database-enterprise up -d

## stop  oracle database free
$ docker compose -p oracle-database-free down --rmi local -v

## stop  oracle database enterprise
$ docker compose -p oracle-database-enterprise down --rmi local -v
```

## Reference

- [Official Website](https://www.oracle.com/apac/database/)