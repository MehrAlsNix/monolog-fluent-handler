FROM composer/composer:php5-alpine

COPY . /usr/src/fluentd
WORKDIR /usr/src/fluentd

RUN composer self-update
RUN composer install
