FROM dosel/zalenium AS base

MAINTAINER Dragosh <oancea.dragosh@gmail.com>
LABEL vendor="I{ustomMade"

# replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update \
    && apt-get install -y --no-install-recommends apt-utils software-properties-common build-essential\
    && apt-get install -y git

RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install -y nodejs

RUN apt-get -y autoclean

COPY --from=base /home/seluser .

# We need the entry.sh to run as root so we can change the uid later on
USER root

# IMPORTANT: Using the string form `CMD "entry.sh"` without
# brackets [] causes Docker to run your process
# And using `bash` which doesn’t handle signals properly
ENTRYPOINT ["entry.sh"]
