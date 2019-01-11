# Docker Scripts

## Cleaning Up

Running Docker over time will generally result in a large number of containers and images that need to be cleaned up. 

Removing these unused images and containers can help maintain computer performance.

### Stop and remove all containers

```bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```

### Remove all images

```bash
docker rmi $(docker images -q)
```

## Inspect Containers

### Execute Commands in Container

[ref](https://docs.docker.com/engine/reference/commandline/exec/)

```bash
docker exec [OPTIONS] CONTAINER COMMAND [ARG...]`
```

**Example**

```bash
# list all containers
# get the target id
docker container ls 

# execute a command
docker exec -it <<CONTAINER_ID>> bash

# run commands in the container
```
