## Build

```sh
docker build -t github.io/emusal/janus-webrtc-gateway .
```
## Execute

```sh
docker run --privileged --cap-add=ALL -u root -p 80:80 -p 443:443 -p 8088:8088 -p 8089:8089 -p 7088:7088 -p 7089:7089 -d github.io/emusal/janus-webrtc-gateway 
```
