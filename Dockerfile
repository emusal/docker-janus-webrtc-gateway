FROM centos:7

ENV container docker

WORKDIR /home
COPY *.sh ./
RUN ./tools.sh
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
EXPOSE 80 7088 8088 8188
USER 1000
CMD ./startup.sh
