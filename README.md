# docker-tcp-proxy

A proxy server that relay TCP traffic to specific host and ports.

# Usage

```
proxy host port [port2 port3 ...]
```

# Example

```
docker run -it -d -p 8080:8080 -p 8088:8088 frankchung/docker-tcp-proxy target.host 8080 8088
```
