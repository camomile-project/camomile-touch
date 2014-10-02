#!/bin/sh
 
if [ -z ${CAMOMILE_API+x} ];
then 
    echo "Please provide API URL using option -e CAMOMILE_API=***";
    exit
fi

echo "var api_url=\"$CAMOMILE_API\";" > /usr/share/nginx/html/config.js
nginx -g "daemon off;"
