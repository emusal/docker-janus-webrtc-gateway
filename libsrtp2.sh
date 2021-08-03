cd ~
git clone https://github.com/cisco/libsrtp.git
cd libsrtp
git checkout v2.3.0
./configure --prefix=/usr --libdir=/usr/lib64 --enable-openssl
make shared_library
make install
