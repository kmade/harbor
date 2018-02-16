# set our node environment, either development or production
# defaults to production, compose overrides this to development on build and run
# arm32v7/openjdk
ARG BASE_IMG=kmade/harbor-jenkins
ARG JENKINS_VERSION
ARG PORT=8080
ARG USER=jenkins
# Base Node
FROM $BASE_IMG AS base
MAINTAINER Dragosh <oancea.dragosh@gmail.com>
LABEL vendor="I{ustomMade"
## Default ENVs
ENV PORT $PORT
ENV JENKINS_HOME /var/jenkins_home
ENV JENKINS_VERSION ${JENKINS_VERSION:-2.104}
# Skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV JENKINS_USER admin
ENV JENKINS_PASS admin
USER root
## Exposing
EXPOSE $PORT 50000

RUN curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"
RUN apt-get update

RUN apt-get install -y docker-ce
RUN curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/bin/docker-compose
RUN chmod +x /usr/bin/docker-compose
# HEALTHCHECK
HEALTHCHECK CMD curl -fs http://localhost:$PORT || exit 1
RUN mkdir -p /root/.ssh
RUN /usr/local/bin/install-plugins.sh git docker-workflow
#COPY default-user.groovy /usr/share/jenkins/ref/init.groovy.d/default-user.groovy
#COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
WORKDIR $JENKINS_HOME
