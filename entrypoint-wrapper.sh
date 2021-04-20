#!/bin/bash

if [ -n "$APP_CONFIG" ]
then
    cp $APP_CONFIG /usr/share/nginx/html/app-config.js
fi

exec /usr/src/entrypoint.sh "$@"
