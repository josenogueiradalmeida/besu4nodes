#!/bin/bash
#RUN ONE SPECIFIED NODE
sudo docker pull nogueiradalmeida/rbbnode:v0.01
echo NODE $1
cd node$1
cd data
sudo rm -rf besu.networks
sudo rm -rf besu.ports
sudo rm -rf caches
sudo rm -rf database
sudo rm -rf DATABASE_METADATA.json
sudo rm -rf uploads
cd ..
sudo docker run  --network=host -v /home/josej/meu/git/besu4nodes/node$1/:/conf/local -v /home/josej/meu/git/besu4nodes/node$1/data:/conf/data rbb_bootnode:latest