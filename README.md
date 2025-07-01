often use middleware docker-compose

```
docker-compose -f docker-compose.yaml -p xxx up -d

docker-compose -p xxx down --rmi local --remove-orphans
```