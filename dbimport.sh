#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ]; then
    echo "Expected Mongo dump input path at argv \$1"
    exit 1
fi

MONGO_CONTAINER="$(docker-compose ps -q mongo)"

docker exec -i $MONGO_CONTAINER bash -c "mkdir -p /tmp && rm -rf /tmp/dump"
docker cp "$1" $MONGO_CONTAINER:/tmp/dump
docker exec -i $MONGO_CONTAINER bash -c \
  "cd /tmp/dump && mongorestore --db lb3ex ."

echo "Done."

