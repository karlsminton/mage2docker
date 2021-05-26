FROM php:7.4-fpm

RUN apt-get update -y && apt-get install -y libicu-dev \
    g++ \
    libpng-dev \
    libmcrypt-dev \
    libreadline-dev \
    libxml2-dev \
    libxslt-dev \
    libjpeg-dev \
    libfreetype6-dev \
    mysql-client-* \
    mailutils \
    wget \
    libsodium-dev \
    zlib1g-dev \
    libzip-dev

RUN wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64
RUN chmod +x mhsendmail_linux_amd64
RUN mv mhsendmail_linux_amd64 /usr/local/bin/mhsendmail

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install bcmath

RUN docker-php-ext-configure gd --with-freetype --with-jpeg && docker-php-ext-install gd

RUN docker-php-ext-install intl
RUN docker-php-ext-install soap
RUN docker-php-ext-install xsl
RUN docker-php-ext-install zip
RUN docker-php-ext-install sockets
RUN docker-php-ext-install sodium

