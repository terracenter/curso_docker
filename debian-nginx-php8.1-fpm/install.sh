#!/bin/bash

apt update && apt upgrade -y && apt install -y curl &&\
curl -sSL https://packages.sury.org/php/README.txt | bash -x &&\
apt update && apt install -y nginx &&\
apt install -y php-fpm php8.1-zip php8.1-intl php8.1-xml \
php8.1-curl php8.1-mbstring php8.1-gd  