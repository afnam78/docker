FROM nginx:stable-alpine

ADD ./nginx.conf /etc/nginx/conf.d/default.conf
ADD ./certs /etc/nginx/ssl

RUN mkdir -p /var/www/html/public

USER root
