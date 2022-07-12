#!/bin/bash

if [[ $1 == "serve" ]]; then
    service cron start
    nginx -c "/etc/nginx/nginx.conf" -g "daemon off;"
elif [[ $1 == "mirror" ]]; then
    apt-mirror
else
    echo "Unknown argument: $1"
    echo "Usage: $0 [serve] [mirror]"
fi
