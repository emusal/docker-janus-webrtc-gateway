# 원하는 작업 디렉토리
cd ~

yum install -y gengetopt

git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway

# git checkout을 통해 원하는 커밋으로 버전 변경. (필요한 경우에만 입력)
git checkout v0.10.7

sh autogen.sh

# doc을 설치할 경우 마지막줄에 --enable-docs를 추가. (이전에 doxygen과 graphviz 설치 우선 필요)
# 두번째 줄의 prefix는 janus가 설치될 위치를 지정. /opt는 리눅스에서 기타 응용프로그램이 설치되는 위치로 적합
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
