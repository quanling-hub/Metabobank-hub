#!/bin/bash

wget http://116.204.100.57/metabobank/outmongo.tar.gz
wget http://116.204.100.57/metabobank/nsmetabobank.tar.gz
wget http://116.204.100.57/metabobank/mongod_v1.2.4.tar.gz

docker-compose up -d

echo "Now you can use your metabobank in $(hostname -I | awk '{print $1}'):8085 or 127.0.0.1:8085" 