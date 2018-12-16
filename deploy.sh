echo "Start deployment on server"

ssh root@139.99.202.246 "cd ./projects/lb3api && npm install && ./stop.sh && ./start.sh"
