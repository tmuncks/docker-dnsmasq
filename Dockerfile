FROM alpine:edge

RUN apk add --no-cache dnsmasq=2.80-r3

EXPOSE 53/tcp
EXPOSE 53/udp

CMD ["/usr/sbin/dnsmasq", "-k"]
