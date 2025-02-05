FROM php:8.2-fpm

# xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug


COPY ./configs/php/nginx/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini