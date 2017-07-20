#!/bin/bash
set -eu

## OTHER Helpers
# Remove all containers
docker rm -f $(docker ps -a -q)

# Remove all images
docker rmi $(docker images -f "dangling=true" -q)
docker rmi -f $(docker images -a -q)

# Remove volumes
docker volume rm $(docker volume ls -q)

docker images
# Aliases
# alias elm='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID -p 8000:8000 kmade/harbor-elm'
