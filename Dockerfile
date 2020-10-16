FROM codercom/code-server

USER root

RUN apt-get update -y \
    && apt-get install -y zip unzip git libonig-dev

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN apt -y install lsb-release apt-transport-https ca-certificates
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list

RUN apt-get update -y \
 && apt-get install -y \
    php7.4-cli php7.4-mbstring php7.4-mysql \
    php7.4-xml \
    nodejs npm

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
