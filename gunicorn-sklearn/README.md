docker-gunicorn-sklearn
==========

This is a Dockerfile for building obmarg/gunicorn-sklearn - a docker container
for hosting python webapps that make use of scikit-learn.

It builds on `obmarg/gunicorn` (which can be found in the gunicorn folder of
this repository), but installs and builds scikit-learn and it's dependencies.

Usage of this Dockerfile is basically the same as obmarg/gunicorn, so I'll not
document that here.  Note that this image will work best with apps that require
the same versions of scikit-learn as this container is compiled with.
Otherwise, another compile of scikit-learn may be required.

See the `sklearn-requirements.txt` file for the currently used versions.
