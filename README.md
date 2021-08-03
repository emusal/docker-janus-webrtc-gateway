## Build

```sh
docker build -t emusal/docker-janus-webrtc-gateway .
```
## Execute

```sh
docker run -p 80:80 -p 8088:8088 -p 8188:8188 -d emusal/docker-janus-webrtc-gateway 
```
