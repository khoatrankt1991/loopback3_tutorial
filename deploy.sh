echo "Start deployment on server"

ssh root@139.99.202.246 "cd ./projects/lb3api && git pull && npm install && ./stop.sh && docker-compose build && ./start.sh"

echo "Done"