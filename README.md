often use middleware docker-compose

```
docker-compose -f docker-compose.yml -p xxx up -d

docker-compose -p xxx down --rmi local --remove-orphans
```