FROM alpine:3.10.1

EXPOSE 443

RUN apk add --update bash socat

COPY tcp-proxy.sh /usr/bin/tcp-proxy

ENTRYPOINT ["tcp-proxy"]
