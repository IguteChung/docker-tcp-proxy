FROM alpine:3.10.3

RUN apk add --update bash socat

COPY proxy.sh /usr/bin/proxy

ENTRYPOINT ["proxy"]