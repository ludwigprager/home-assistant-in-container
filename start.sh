#/bin/bash

TAG=2023.3.0.dev20230216

docker run -d \
  --name ha \
  --privileged \
  --restart=unless-stopped \
  -v $(pwd)/config:/config \
  --network=host \
  --device /dev/ttyUSB0:/dev/ttyUSB0 \
  ghcr.io/home-assistant/home-assistant:${TAG}

#e TZ=MY_TIME_ZONE \
