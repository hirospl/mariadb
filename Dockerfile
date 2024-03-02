FROM debian:stable-slim

RUN apt-get update && apt-get -y upgrade \
&&  DEBIAN_FRONTEND=noninteractive apt-get -y install mariadb-server \
&&  /etc/init.d/mariadb stop \
&&  apt-get clean autoclean \
&&  apt-get -y autoremove \
&&  rm -rf /var/lib/{apt,dpkg,cache,log} \
&&  rm -rf /tmp/* /var/tmp/*

EXPOSE 3306