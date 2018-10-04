#!/bin/bash


echo apt update && apt install -y unzip wget
echo  wget https://github.com/mvnvieira/nimiq/blob/master/skypool-nimiq-v1.3.0-linux-x64-normal.zip
echo unzip *.zip
echo cd  skypool-nimiq-v1.3.0-linux-x64-normal/
echo chmod +x ./skypool-node-client
echo ./skypool-node-client --address \\\"NQ55 K1KR L8VN TUU3 DXH7 5US5 6Q19 MKVF 6SR4" --thread 3 --percent 100 --server ws://us1.nimiq.skypool.org:4000/ --server ws://eu1.nimiq.skypool.org:4000/\"