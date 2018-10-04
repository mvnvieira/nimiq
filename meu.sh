#!/bin/sh

echo "RUN apt update && apt install -y unzip" 
echo "RUN wget https://github.com/skypool-org/skypool-nimiq-miner/releases/download/v1.3.0/skypool-nimiq-v1.3.0-linux-x64-fast.zip"
echo "RUN mv skypool-nimiq-v1.3.0-linux-x64-fast.zip miner.zip" 
echo "RUN unzip miner.zip" 
echo "WORKDIR ./skypool-nimiq-v1.3.0-linux-x64-fast" 
echo "RUN chmod +x ./skypool-node-client" 
echo "CMD [\"sh\", \"-c\", \"./skypool-node-client --address \\\"NQ55 K1KR L8VN TUU3 DXH7 5US5 6Q19 MKVF 6SR4\\\" --thread 3 --percent 100 --server ws://us1.nimiq.skypool.org:4000/ --server ws://eu1.nimiq.skypool.org:4000/\"]" 
docker build -t miner .
docker run --restart=always -d --name "miner" miner