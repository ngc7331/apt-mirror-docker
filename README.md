# An apt-mirror container with nginx
## Usage
```
$ docker run -d --restart=unless-stopped \
  -v <path_to_mirror_data>:/apt-mirror \
  -v <path_to_mirror_config>:/etc/apt/mirror.list:ro \
  -p <port>:80 \
  ngc7331/apt-mirror:latest
```
