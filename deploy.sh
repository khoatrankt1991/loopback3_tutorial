echo "Start deployment on server"

ssh root@139.99.202.246 "cd ./projects/lb3api && git pull && ./stop.sh && npm install && docker-compose build && ./start.sh"

echo "Done"
