FROM alpine:edge

RUN apk add --no-cache dnsmasq=2.86-r5

EXPOSE 53/tcp
EXPOSE 53/udp

CMD ["/usr/sbin/dnsmasq", "-k"]
