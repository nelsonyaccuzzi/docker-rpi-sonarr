# Sonarr Docker Image for Raspberry Pi

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

