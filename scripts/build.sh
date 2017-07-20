#!/bin/bash
set -eu
DIR="harbor-$1"
if [[ $DIR && ! -d $DIR ]]; then
    echo "Unable to find $DIR"
    exit 1
fi
echo "Building $DIR"
docker build -t kmade/$DIR "$DIR"


## OTHER Helpers
# Remove all containers
# docker rm -f $(docker ps -a -q)

# Remove all images
# docker rmi $(docker images -f "dangling=true" -q)
# docker rmi -f $(docker images -a -q)

# Remove volumes
# docker volume rm $(docker volume ls -q)

# Aliases
# alias elm='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID -p 8000:8000 kmade/harbor-elm'
