## Build

```sh
docker build -t github.io/emusal/janus-webrtc-gateway .
```
## Execute

```sh
docker run -p 80:80 -p 8088:8088 -p 8188:8188 -d github.io/emusal/janus-webrtc-gateway 
```
