#!/bin/sh
exec /sbin/setuser app /usr/local/bin/gunicorn -w $NUM_WORKERS -b 0.0.0.0:${PORT:-8080} --chdir $APP_DIR $ADDITIONAL_GUNICORN_OPTS $APP_NAME
