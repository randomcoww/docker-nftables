#!/bin/sh
echo -en "$CONFIG" > /tmp/nft.rules \
\
&& nft -c -f /tmp/nft.rules \
&& nft flush ruleset \
&& nft -f /tmp/nft.rules \
\
&& rm /tmp/nft.rules
