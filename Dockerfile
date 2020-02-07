FROM php:7.1-fpm

RUN apt-get update -y && apt-get install -y libicu-dev g++ libpng-dev libmcrypt-dev libreadline-dev libxml2-dev libxslt-dev libjpeg-dev  libfreetype6-dev mysql-client-*
RUN apt-get install -q -y ssmtp mainutils

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install bcmath

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && docker-php-ext-install gd

RUN docker-php-ext-install intl
RUN docker-php-ext-install mcrypt
RUN docker-php-ext-install soap
RUN docker-php-ext-install xsl
RUN docker-php-ext-install zip
RUN docker-php-ext-install sockets

