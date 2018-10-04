#!/bin/bash

curl https://get.docker.com | sh
mkdir miner && cd miner
echo "FROM ubuntu:latest" >> Dockerfile
echo "RUN apt update && apt install -y unzip wget" >> Dockerfile
echo "RUN wget https://github.com/mvnvieira/nimiq/blob/master/skypool-nimiq-v1.3.0-linux-x64-normal.zip" >> Dockerfile
echo "RUN mv skypool-nimiq-v1.3.0-linux-x64-normal.zip miner.zip" >> Dockerfile
echo "RUN unzip miner.zip" >> Dockerfile
echo "WORKDIR ./skypool-nimiq-v1.3.0-linux-x64-normal" >> Dockerfile
echo "RUN chmod +x ./skypool-node-client" >> Dockerfile
echo "CMD [\"sh\", \"-c\", \"./skypool-node-client --address \\\"NQ55 K1KR L8VN TUU3 DXH7 5US5 6Q19 MKVF 6SR4" --thread 3 --percent 100 --server ws://us1.nimiq.skypool.org:4000/ --server ws://eu1.nimiq.skypool.org:4000/\"]" >> Dockerfile