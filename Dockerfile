FROM ubuntu:latest

LABEL "project"="web template"
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install apache2 -y

COPY . /var/www/html/

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

VOLUME /var/log/apache2
WORKDIR /var
