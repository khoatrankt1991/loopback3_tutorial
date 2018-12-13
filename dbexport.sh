set -euo pipefail

if [ "$#" -lt 1 ]; then
    echo "Expected Mongo dump output path at argv \$1"
    exit 1
fi
MONGO_CONTAINER="$(docker-compose ps -q mongo)"

docker exec -it $MONGO_CONTAINER bash -c \
  "cd /bin & mongodump --db lb3ex --out=/tmp/dump"
docker cp $MONGO_CONTAINER:/tmp/dump/lb3ex "$1"
tar -zcvf "$1"
