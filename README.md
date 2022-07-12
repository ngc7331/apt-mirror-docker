# An apt-mirror container with nginx
## Usage
```
$ docker run -d --restart=unless-stopped \
  -v /path/to/mirror_data:/apt-mirror \
  -p <port>:80 \
  ngc7331/apt-mirror:latest
```

To edit mirror config:
1. add a volume when starting the container: `-v /path/to/config.list:/etc/apt/mirror.list:ro`
2. edit `config.list`
