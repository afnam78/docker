FROM php:8-fpm-alpine

RUN mkdir -p /var/www/html/public

RUN docker-php-ext-install pdo pdo_mysql
RUN apk add --no-cache bash curl git unzip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

USER root

CMD ["php-fpm", "-y", "/usr/local/etc/php-fpm.conf", "-R"]