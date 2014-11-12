FROM phusion/baseimage:0.9.15

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init process
CMD ["/sbin/my_init"]

EXPOSE 8080

# Default ENV settings
ENV NUM_WORKERS 4
ENV APP_DIR /home/app

# Disable ssh login
RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

# Setup a user for running the application
RUN useradd app -d /home/app

# Install global dependencies
RUN apt-get update
RUN apt-get install -y python python2.7 python-setuptools python-dev
RUN easy_install pip
RUN pip install gunicorn

# Install gunicorn running script
RUN mkdir /etc/service/gunicorn
ADD run_gunicorn.sh /etc/service/gunicorn/run
RUN chmod +x /etc/service/gunicorn/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
