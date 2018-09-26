#!/bin/bash

curl https://get.docker.com | sh
mkdir miner && cd miner
echo "FROM ubuntu:latest" >> Dockerfile
echo "RUN apt update && apt install -y unzip wget" >> Dockerfile
echo "RUN wget https://github.com/skypool-org/skypool-nimiq-miner/releases/download/v1.3.0/skypool-nimiq-v1.3.0-linux-x64-fast.zip" >> Dockerfile
echo "RUN mv skypool-nimiq-v1.3.0-linux-x64-fast.zip miner.zip" >> Dockerfile
echo "RUN unzip miner.zip" >> Dockerfile
echo "WORKDIR ./skypool-nimiq-v1.3.0-linux-x64-fast" >> Dockerfile
echo "RUN chmod +x ./skypool-node-client" >> Dockerfile
echo "CMD [\"sh\", \"-c\", \"./skypool-node-client --address \\\"NQ55 K1KR L8VN TUU3 DXH7 5US5 6Q19 MKVF 6SR4\\\" --thread 8 --percent 50 --server ws://us1.nimiq.skypool.org:4000/ --server ws://eu1.nimiq.skypool.org:4000/\"]" >> Dockerfile
docker build -t miner .
docker run --restart=always -d --name "miner" miner