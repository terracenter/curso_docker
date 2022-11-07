FROM debian:bullseye-slim

RUN apt update && apt upgrade -y 
RUN apt install -y nginx

RUN apt install -y apt-transport-https lsb-release ca-certificates curl 
RUN curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
RUN sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
RUN apt update
RUN apt install -y php8.1-fpm 

RUN apt install -y php8.1-zip php8.1-intl php8.1-xml php8.1-curl php8.1-mbstring php8.1-gd  

EXPOSE 9000
CMD ["php-fpm8.1"]

COPY default /etc/nginx/sites-available/default
RUN ln -sf  /etc/nginx/sites-available/default  /etc/nginx/sites-enabled/default
COPY info.php /var/www/html/info.php

WORKDIR /var/www/html/
#RUN echo "<h1><center>Funciona </h1></center>" > /var/www/html/test.html
#RUN echo "$(php-fpm8.1 -v)" > /var/www/html/version.html

#RUN echo "$(ls /var/www/html/)" > ./dir.html
 
VOLUME /var/www/html/ /var/log/nginx



# El siguiente cmd no hace falta, ya que nginx trae su propio cmd
CMD nginx -g 'daemon off;'