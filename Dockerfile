FROM amasolini/laravel-docker-container:5.6

WORKDIR /tmp
RUN apt-get update && apt-get install -y \	
    libz-dev \
    libmemcached-dev \
    xz-utils
RUN pecl install memcached
RUN echo extension=memcached.so >> /usr/local/etc/php/conf.d/memcached.ini

WORKDIR /var/www/html
