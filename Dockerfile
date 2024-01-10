FROM php:8.2.1-fpm-alpine

RUN apk update && \
    apk add --no-cache \
        libpq-dev && \
    docker-php-ext-install pdo pdo_pgsql pgsql pdo_mysql && \
    cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
COPY ./adminer /app

WORKDIR /app

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]