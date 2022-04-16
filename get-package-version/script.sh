#!/usr/bin/env sh

PACKAGE=$1

2>/dev/null jq --raw-output '.version | select(.)' "$PACKAGE"
