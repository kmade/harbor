FROM kmade/harbor-node:latest

MAINTAINER Dragosh <oancea.dragosh@gmail.com>
LABEL vendor="I{ustomMade"


# replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# update the repository sources list
# and install dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends apt-utils \
    && apt-get install -y git \
    && apt-get install -y curl \
    && apt-get -y autoclean
RUN npm i -g polymer-cli bower --loglevel error
