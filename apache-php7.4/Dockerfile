FROM debian:bullseye-slim

RUN apt update && apt dist-upgrade -y 
RUN \
    apt install -y apache2 && \
    apt install -y php php-cli php-common

COPY fruits /var/www/html
COPY info.php /var/www/html/

RUN apt install -y openssl ca-certificates &&\
a2enmod ssl && a2enmod socache_shmcb &&\
service apache2 restart &&\
a2ensite default-ssl
COPY ssl.conf /etc/apache2/sites-available/default-ssl.conf
COPY docker.crt /docker.crt
COPY docker.key /docker.key

EXPOSE 80 443
CMD apachectl -DFOREGROUND