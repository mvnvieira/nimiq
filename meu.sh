#!/bin/bash

apt update && apt install -y unzip
wget https://github.com/mvnvieira/nimiq/blob/master/skypool-nimiq-v1.3.0-linux-x64-normal.zip
unzip *.zip
cd  skypool-nimiq-v1.3.0-linux-x64-normal/
chmod +x ./skypool-node-client
./skypool-node-client --address \\\"NQ55 K1KR L8VN TUU3 DXH7 5US5 6Q19 MKVF 6SR4" --thread 3 --percent 100 --server ws://us1.nimiq.skypool.org:4000/ --server ws://eu1.nimiq.skypool.org:4000/\"