#!/bin/bash

wget http://116.204.100.57/metabobank/outmongo.tar.gz
wget http://116.204.100.57/metabobank/nsmetabobank_v3.0.tar.gz
wget http://116.204.100.57/metabobank/mongod_v1.2.3.tar.gz
wget http://116.204.100.57/metabobank/omics_v1.2.4.tar.gz

tar -xzvf data1.tar.gz -C /

chmod -R 777 /data1

cp docker-compose.yml /data1

tar -xzvf outmongo.tar.gz -C /

docker load -i nsmetabobank_v3.0.tar.gz

docker load -i mongod_v1.2.3.tar.gz

docker load -i omics_v1.2.4.tar.gz

docker-compose up -d

echo "Now you can use your metabobank in $(hostname -I | awk '{print $1}'):8085 or 127.0.0.1:8085" 