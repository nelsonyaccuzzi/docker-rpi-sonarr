# Sonarr Docker Image for Raspberry Pi [![Build Status](https://travis-ci.org/nelsonyaccuzzi/docker-rpi-sonarr.svg?branch=master)](https://travis-ci.org/nelsonyaccuzzi/docker-rpi-sonarr)

## Usage

```
docker run -d \
  --name sonarr \
  -v /path/to/config:/config \
  -v /path/to/data:/data \
  -p 8989:8989 \
  --restart unless-stopped \
  nelsonyaccuzzi/docker-rpi-sonarr
```

