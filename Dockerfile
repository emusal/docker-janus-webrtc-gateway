FROM centos:7

ENV container docker

WORKDIR /home

#RUN yum install -y update 
RUN yum install -y epel-release 
RUN yum install -y \
  unzip wget curl which git \
  gcc \
  gcc-c++ \
  libtool \
  autoconf \
  automake \
  make \
  cmake \
  python3 \
  python3-pip \
  gettext \
  gettext-autopoint \
  texinfo \
  jansson-devel \
  libconfig-devel \
  openssl-devel \
  sofia-sip-devel \
  opus-devel \
  libogg-devel \
  libcurl-devel \
  glib2-devel \
  zlib-devel \
  pkgconfig \
  gengetopt \
  doxygen \
  graphviz

COPY libnice.sh ./
RUN ./libnice.sh

COPY libsrtp2.sh ./
RUN ./libsrtp2.sh

COPY usrsctp.sh ./
RUN ./usrsctp.sh

COPY libmicrohttpd.sh ./
RUN ./libmicrohttpd.sh

RUN mkdir ./conf

COPY conf/nginx* ./conf/
COPY nginx.sh ./
RUN ./nginx.sh

COPY janus.sh ./
RUN ./janus.sh

COPY conf/*.jcfg /opt/janus/etc/janus/
ADD certs /opt/janus/share/certs
COPY html/* /opt/janus/share/janus/demos/

EXPOSE 80 443 8088 8089 8188
USER 1000

COPY startup.sh ./
CMD ./startup.sh
