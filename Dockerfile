FROM php:7.3-apache-bullseye

RUN mkdir -p /var/testlink/upload_area/ && mkdir -p /var/testlink/logs/ && chown -R www-data:www-data /var/testlink
RUN apt-get update && apt-get install -y \
    libonig-dev \
  && docker-php-ext-install pdo_mysql mysqli
RUN a2enmod rewrite \
  && service apache2 restart
