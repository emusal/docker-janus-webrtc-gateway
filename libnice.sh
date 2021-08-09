pip3 install meson
ln -s /usr/local/bin/meson /usr/bin/
cd ~

wget https://github.com/ninja-build/ninja/releases/download/v1.10.1/ninja-linux.zip
unzip ninja-linux.zip
cp ninja /usr/bin/

cd ~

git clone https://gitlab.freedesktop.org/libnice/libnice.git
cd libnice
meson --prefix=/usr build
ninja -C build
ninja -C build install
