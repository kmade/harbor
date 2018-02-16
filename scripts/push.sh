#!/bin/bash
set -eu
DIR="harbor-$1"
PREG=kmade.net:5000
if [[ $DIR && ! -d $DIR ]]; then
    echo "Unable to find $DIR"
    exit 1
fi
echo "Pushing to hub $DIR"

docker tag kmade/$DIR $PREG/$DIR
docker push kmade/$DIR
docker push $PREG/$DIR

