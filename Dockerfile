#FROM php:7.3-apache-bullseye
FROM php:7.0.24-apache-jessie

RUN mkdir -p /var/testlink/upload_area/ && mkdir -p /var/testlink/logs/ && chown -R www-data:www-data /var/testlink
RUN echo "deb http://archive.debian.org/debian/ stretch main" > /etc/apt/sources.list \
    && echo "deb http://archive.debian.org/debian-security stretch/updates main" >> /etc/apt/sources.list \
    && apt-get update && apt-get install -y  libonig-dev \
    && docker-php-ext-install pdo_mysql mysqli
RUN a2enmod rewrite \
  && service apache2 restart
