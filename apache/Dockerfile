FROM centos:7
LABEL version="0.1"
LABEL description="Centos 7 and Apache Server"

RUN echo "ip_resolve=4" >> /etc/yum.conf
RUN yum update -y
RUN yum install -y httpd

WORKDIR /var/www/html

COPY temas/startbootstrap-freelancer-gh-pages .
#COPY temas/startbootstrap-sb-admin-2-gh-pages .

ENV contenido prueba
RUN echo "$contenido" > ./prueba.html
RUN echo "$(whoami)" > ./user1.html

RUN useradd freddy 
USER freddy
RUN echo "$(whoami)" > /tmp/user2.html

USER root
RUN cp /tmp/user2.html /var/www/html/

# Copiar script 
COPY run.sh /run.sh

# Ejeuctar scripta (Servicios)
CMD sh /run.sh