FROM debian:bullseye-slim

RUN apt update && apt upgrade -y 
RUN apt install -y nginx

RUN apt install -y apt-transport-https lsb-release ca-certificates curl bash
RUN curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
RUN sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
RUN apt update
RUN apt install -y \
    php8.1-fpm \
    php8.1-cli \
    php8.1-soap \
    php8.1-xml \
    php8.1-zip \
    php8.1-mbstring \
    php8.1-intl \
    php8.1-gd  \
    php8.1-curl 

EXPOSE 80 443

VOLUME /var/www/html/ /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY ./config/default /etc/nginx/sites-available/

COPY ./bin/start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh