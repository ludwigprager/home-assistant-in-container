#/bin/bash

docker run -d \
  --name ha \
  --privileged \
  --restart=unless-stopped \
  -v $(pwd)/config:/config \
  --network=host \
  --device /dev/ttyUSB0:/dev/ttyUSB0 \
  ghcr.io/home-assistant/home-assistant:latest

#e TZ=MY_TIME_ZONE \
