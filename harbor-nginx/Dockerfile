FROM nginx:1.13-alpine AS base

MAINTAINER Dragosh <oancea.dragosh@gmail.com>
LABEL vendor="I{ustomMade"
RUN rm /etc/nginx/nginx.conf /etc/nginx/mime.types

COPY nginx/ /etc/nginx/
RUN mkdir /etc/nginx/ssl
RUN ln -s /etc/nginx/sites-available/default-ssl /etc/nginx/sites-enabled/default-ssl
# expose both the HTTP (80) and HTTPS (443) ports
EXPOSE 80 443

CMD ["sh", "/start.sh"]
