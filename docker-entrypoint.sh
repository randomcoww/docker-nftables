#!/bin/sh

set -x \
  \
  && nft -c "$@" \
  && nft flush ruleset \
  && nft "$@"
