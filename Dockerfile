FROM centos:7

ENV container docker

RUN yum -y update; yum clean all
RUN yum -y install systemd; yum clean all; \
(cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/sbin/init"]

WORKDIR /home
COPY *.sh ./
RUN ./tools.sh
RUN ./dependency.sh
RUN ./libnice.sh
RUN ./libsrtp2.sh
RUN ./usrsctp.sh
RUN ./libmicrohttpd.sh
COPY httpd/*.conf ./
RUN ./httpd.sh
RUN ./janus.sh
COPY conf/*.cfg /opt/janus/etc/janus/
EXPOSE 80 7088 8088 8188
CMD ./startup.sh
