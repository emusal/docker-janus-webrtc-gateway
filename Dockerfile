FROM centos:7

ENV container docker

WORKDIR /home
COPY *.sh ./
RUN ./dependency.sh
RUN ./libnice.sh
RUN ./libsrtp2.sh
RUN ./usrsctp.sh
RUN ./libmicrohttpd.sh
RUN mkdir ./conf
COPY conf/* ./conf/.
RUN ./nginx.sh
RUN ./janus.sh
COPY conf/*.jcfg /opt/janus/etc/janus/.
ADD certs /opt/janus/share/certs
COPY html/* /opt/janus/share/janus/demos/.
EXPOSE 80 443 8088 8089 8188
USER 1000
CMD ./startup.sh
