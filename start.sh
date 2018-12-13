echo "Launching Containers"
docker-compose up -d
echo "Import database"
./dbimport.sh ./transfer/dump/lb3ex
