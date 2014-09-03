FROM obmarg/gunicorn

# Install the fortran compiler needed for numpy
RUN apt-get update
RUN apt-get install -y g++ gfortran 

# Install libblas & liblapack, required for numpy
RUN apt-get install -y libblas-dev liblapack-dev

# Install app dependencies
ADD requirements.txt /tmp/sk-requirements.txt
RUN pip install -r /tmp/sk-requirements.txt

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
