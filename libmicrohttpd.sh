yum install -y git
yum install -y gnutls gnutls-devel

cd ~
git clone https://github.com/Karlson2k/libmicrohttpd.git
cd libmicrohttpd
git checkout v0.9.71
autoreconf -fi
./configure --prefix=/usr --libdir=/usr/lib64 --enable-https=yes --with-gnutls=yes
make
make install
