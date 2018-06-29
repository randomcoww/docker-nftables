#!/bin/sh

if [ -n "$NFTABLES_LOCAL_CONFIG" ]; then
  echo -en "$NFTABLES_LOCAL_CONFIG" > /etc/nft.rules
fi

set -x \
  \
  && nft -c -f /etc/nft.rules \
  && nft flush ruleset \
  && nft -f /etc/nft.rules
