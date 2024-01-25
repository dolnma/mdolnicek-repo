#!/bin/sh
# Substitute environment variables in nginx.conf.template
envsubst '${PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
# Then exec the container's main process (CMD)
exec "$@"