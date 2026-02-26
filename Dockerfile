ARG NGINX_VERSION=1.28.0-alpine3.21-slim

FROM nginx:${NGINX_VERSION}-alpine-slim
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./out .
