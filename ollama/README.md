# Ollama

## Command

```shell
## start ollama cpu
$ docker compose -f docker-compose.cpu.yml -p ollama-cpu up -d

## start ollama amd
$ docker compose -f docker-compose.amd.yml -p ollama-amd up -d

## start ollama nvidia
$ docker compose -f docker-compose.nvidia.yml -p ollama-nvidia up -d

## stop ollama cpu
$ docker compose -p ollama-cpu down --rmi local -v

## stop ollama amd
$ docker compose -p ollama-amd down --rmi local -v

## stop ollama nvidia
$ docker compose -p ollama-nvidia down --rmi local -v
```

## Reference

- [Official Website](https://ollama.com/)