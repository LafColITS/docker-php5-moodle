FROM php:5.4-cli
MAINTAINER Charles Fulton "fultonc@lafayette.edu"

ENV HOME /root
ENV COMPOSER_HOME /root

RUN apt-get clean
RUN apt-get update
RUN apt-get install -y \
        git \
        npm \
        nodejs-legacy \
        libpspell-dev \
        libcurl4-openssl-dev \
        libpng12-dev \
        libicu-dev \
        libxml2-dev \
        php5-pspell \
        libldap2-dev \
        mysql-client

RUN docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu && \
        docker-php-ext-install mysql mysqli pspell curl gd intl xmlrpc ldap zip

ADD https://getcomposer.org/composer.phar /usr/local/bin/composer
RUN cd /usr/local/bin && \
        chmod +x composer

RUN apt-get clean
