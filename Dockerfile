FROM php:7.1-fpm-alpine

RUN apk add --update --no-cache gmp-dev zlib-dev libpng-dev && \
    docker-php-ext-configure gd --with-png-dir=/usr/include/ && \
    docker-php-ext-install gd gmp zip mysqli pdo_mysql && \
    docker-php-source delete && \
    sed -e "s/xfs:x:33/xfs:x:82/" -e "s/www-data:x:82/www-data:x:33/" -i /etc/group && \
    sed -e "s/xfs:x:33:33/xfs:x:82:82/" -e "s/www-data:x:82:82/www-data:x:33:33/" -i /etc/passwd
