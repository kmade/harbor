#!/bin/bash
set -eu
DIR="harbor-$1"
if [[ $DIR && ! -d $DIR ]]; then
    echo "Unable to find $DIR"
    exit 1
fi
echo "Pushing to hub $DIR"
docker push kmade/$DIR
