# meson ��ġ
pip3 install meson
ln -s /usr/local/bin/meson /usr/bin/
# ninja ��ġ

# ��θ� home(root)�� �̵��Ͽ� �۾��ϱ� ���� `cd ~`�� �����Ѵ�. �ʿ��� ��� ��ġ�� �ٲ㵵 ����.
cd ~

wget https://github.com/ninja-build/ninja/releases/download/v1.10.1/ninja-linux.zip
unzip ninja-linux.zip
cp ninja /usr/bin/
# libnice ���� �� ��ġ

# �� �κе� ninja�� ���������� �ʿ��� ��� ���ϴ� �۾� ���丮�� �̵��ص� �ȴ�.
cd ~

git clone https://gitlab.freedesktop.org/libnice/libnice.git
cd libnice
meson --prefix=/usr build
ninja -C build
ninja -C build install
