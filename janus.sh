cd ~

yum install -y gengetopt

git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway

git checkout v0.10.7

sh autogen.sh

./configure \
  --prefix=/opt/janus \
  --disable-websockets \
  --disable-rabbitmq \
  --disable-mqtt \
  --enable-data-channels \
  --enable-rest
  
make
make install
make configs
