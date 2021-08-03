# meson 설치
pip3 install meson
ln -s /usr/local/bin/meson /usr/bin/
# ninja 설치

# 경로를 home(root)로 이동하여 작업하기 위해 `cd ~`를 수행한다. 필요한 경우 위치를 바꿔도 좋다.
cd ~

wget https://github.com/ninja-build/ninja/releases/download/v1.10.1/ninja-linux.zip
unzip ninja-linux.zip
cp ninja /usr/bin/
# libnice 빌드 및 설치

# 이 부분도 ninja와 마찬가지로 필요한 경우 원하는 작업 디렉토리로 이동해도 된다.
cd ~

git clone https://gitlab.freedesktop.org/libnice/libnice.git
cd libnice
meson --prefix=/usr build
ninja -C build
ninja -C build install
