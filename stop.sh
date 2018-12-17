echo "Export Database"
rm -rf transfer/dump/lb3ex \
&& ./dbexport.sh ./transfer/dump/lb3ex \

&& echo "Stop services" \
&& docker-compose down \
&& echo "Done"
