echo "Export Database"
./dbexport.sh ./transfer/dump/lb3ex &&  echo "Stop services" && docker-compose down && echo "Done"
