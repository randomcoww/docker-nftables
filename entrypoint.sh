#!/bin/sh
echo -en "$CONFIG" > /etc/nft.rules && \
nft flush ruleset && \
nft -f /etc/nft.rules
