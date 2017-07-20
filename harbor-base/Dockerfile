# set the base image to Debian
# https://hub.docker.com/_/debian/
FROM node:8.1 as base

MAINTAINER Dragosh "oancea.dragosh@gmail.com"
LABEL vendor="I{ustomMade"
# nvm environment variables
#ENV NVM_DIR /usr/local/nvm
#ENV NODE_VERSION 8.1.4
#ENV YARN_VERSION ^0.27.5

# replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# update the repository sources list
# and install dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends apt-utils \
    && apt-get install -y build-essential \
    && apt-get install -y curl \
    && apt-get install -y nginx \
    && apt-get -y autoclean



# RUN chmod  npm root -g
# install node and npm
#
#RUN curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash \
#    && source $NVM_DIR/nvm.sh \
#    && nvm install $NODE_VERSION \
#    && nvm alias default $NODE_VERSION \
#    && nvm use default

# add node and npm to path so the commands are available
# ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
# ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
#RUN mkdir /home/node/.npm
#RUN export PATH=/home/node/.npm/bin:$PATH
#ENV NPM_CONFIG_PREFIX=/home/node/.npm


COPY start.sh /start.sh
CMD ["sh", "/start.sh"]
