docker-gunicorn
------

A base Dockerfile for running a python webapp in gunicorn.

## Instructions

This Dockerfile is meant to be used as a base for an applications Dockerfile.

The application Dockerfile should install the applications dependencies
globally, create the application in /home/app (readable by the user `app`) and
then setup some configuration environment variables.

An example application & Dockerfile can be found in the example folder.

```
FROM obmarg/gunicorn
MAINTAINER Graeme Coupar <grambo@grambo.me.uk>

# Install app dependencies
ADD requirements.txt /home/app/requirements.txt
RUN pip install -r /home/app/requirements.txt

# Install App
ADD app.py /home/app/app.py
RUN chown -R app /home/app/*
RUN chmod -R a-w /home/app/*

ENV APP_NAME app:app
ENV NUM_WORKERS 4
```
