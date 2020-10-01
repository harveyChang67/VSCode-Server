FROM linuxserver/code-server

RUN apt-get update -y && apt-get install -y openssl zip unzip git libonig-dev
RUN apt-get install -y curl wget gnupg less lsof net-tools git apt-utils
RUN apt-get install -y emacs

RUN apt install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update \
 && apt-get install -y \
    php7.4-cli \
    php7.4-xml \
    php7.4-mbstring \
    nodejs
#RUN docker-php-ext-install mbstring
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
