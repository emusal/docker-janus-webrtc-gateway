cd ~

git clone https://github.com/sctplab/usrsctp
cd usrsctp
./bootstrap
./configure --prefix=/usr --libdir=/usr/lib64 --disable-programs --disable-inet --disable-inet6
make 
make install
