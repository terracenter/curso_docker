FROM nginx:latest
LABEL version="1"
RUN useradd freddy
WORKDIR /usr/share/nginx/html

COPY temas/ninom-html .

ENV archivo docker

RUN echo "$archivo" >   ./env.html

EXPOSE 90

USER freddy

RUN echo "Yo soy $(whoami)" > /tmp/yo.html

USER root

RUN cp /tmp/yo.html /usr/share/nginx/html/docker.html

VOLUME logs

# El siguiente cmd no hace falta, ya que nginx trae su propio cmd
CMD nginx -g 'daemon off;'



