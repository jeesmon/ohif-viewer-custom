#!/bin/bash -x

if [ -n "$APP_CONFIG" ]
then
    cp $APP_CONFIG /usr/share/nginx/html/app-config.js
fi

if [ -n "$NGINX_CONFIG" ]
then
    cp $NGINX_CONFIG /etc/nginx/conf.d/default.conf
fi

exec /usr/src/entrypoint.sh "$@"
