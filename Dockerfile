FROM alpine:latest

RUN \
  apk add --no-cache nftables

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
