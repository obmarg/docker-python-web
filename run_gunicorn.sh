#!/bin/sh
exec /sbin/setuser app /usr/local/bin/gunicorn -w $NUM_WORKERS -b 0.0.0.0:8080 --chdir /home/app $APP_NAME
