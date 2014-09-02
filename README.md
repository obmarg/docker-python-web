docker-gunicorn
------

A base Dockerfile for running a python webapp in gunicorn.

## Instructions

This Dockerfile is meant to be used as a base for an applications Dockerfile.

The application Dockerfile should install the applications dependencies
globally, create the application in /home/app (readable by the user `app`) and
then setup some configuration environment variables.

An example application & Dockerfile can be found in the example folder.
