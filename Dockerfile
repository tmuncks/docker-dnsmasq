FROM alpine:edge

RUN apk add --no-cache dnsmasq=2.82-r0

EXPOSE 53/tcp
EXPOSE 53/udp

CMD ["/usr/sbin/dnsmasq", "-k"]
