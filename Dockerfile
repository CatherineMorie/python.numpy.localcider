# Initialize new build stage and set the base image.
FROM python:3.7-slim

# Execute commands in a new layer on top of the current image and commit the result.
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    vim \
    libnss-sss \
    && apt-get clean all \
    && rm -r /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    numpy \
    localcider

# Define default command and argument(s) to run image software or give an interactive shell.
CMD [ "/bin/bash" ]