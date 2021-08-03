# ���ϴ� �۾� ���丮
cd ~

yum install -y gengetopt

git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway

# git checkout�� ���� ���ϴ� Ŀ������ ���� ����. (�ʿ��� ��쿡�� �Է�)
git checkout v0.10.7

sh autogen.sh

# doc�� ��ġ�� ��� �������ٿ� --enable-docs�� �߰�. (������ doxygen�� graphviz ��ġ �켱 �ʿ�)
# �ι�° ���� prefix�� janus�� ��ġ�� ��ġ�� ����. /opt�� ���������� ��Ÿ �������α׷��� ��ġ�Ǵ� ��ġ�� ����
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
